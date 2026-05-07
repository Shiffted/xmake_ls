use std::sync::Arc;

use crate::{
    InferFailReason, check_type_compact,
    db_index::{DbIndex, LuaFunctionType, LuaType},
    semantic::infer::InferCallFuncResult,
};

pub fn resolve_signature_by_args(
    db: &DbIndex,
    overloads: &[Arc<LuaFunctionType>],
    expr_types: &[LuaType],
    is_colon_call: bool,
    arg_count: Option<usize>,
) -> InferCallFuncResult {
    let expr_len = expr_types.len();
    let arg_count = arg_count.unwrap_or(expr_len);
    let mut need_resolve_funcs = match overloads.len() {
        0 => return Err(InferFailReason::None),
        1 => return Ok(Arc::clone(&overloads[0])),
        _ => overloads
            .iter()
            .map(|it| Some(it.clone()))
            .collect::<Vec<_>>(),
    };

    if expr_len == 0 {
        for overload in overloads {
            let param_len = overload.get_params().len();
            if param_len == 0 {
                return Ok(overload.clone());
            }
        }
    }

    let v_indices: Vec<Option<usize>> = need_resolve_funcs
        .iter()
        .map(|opt| opt.as_ref().and_then(|f| f.variadic_param_index()))
        .collect();

    let mut best_match_result = need_resolve_funcs[0].clone().unwrap();
    for arg_index in 0..expr_len {
        let mut current_match_result = ParamMatchResult::NotMatch;
        for i in 0..need_resolve_funcs.len() {
            let opt_func = &need_resolve_funcs[i];
            if opt_func.is_none() {
                continue;
            }
            let func = opt_func.as_ref().unwrap();
            let v_idx = v_indices[i];
            let param_len = func.get_params().len();
            if param_len < arg_count && v_idx.is_none() {
                need_resolve_funcs[i] = None;
                continue;
            }

            let colon_define = func.is_colon_define();
            let mut param_index = arg_index;
            let mut effective_arg_count = arg_count;
            match (colon_define, is_colon_call) {
                (true, false) => {
                    if param_index == 0 {
                        continue;
                    }
                    param_index -= 1;
                    effective_arg_count = effective_arg_count.saturating_sub(1);
                }
                (false, true) => {
                    param_index += 1;
                    effective_arg_count += 1;
                }
                _ => {}
            }
            let expr_type = &expr_types[arg_index];
            let param_type = match pick_param_slot(func, v_idx, param_index, effective_arg_count) {
                Some(slot) => func
                    .get_params()
                    .get(slot)
                    .map(|it| it.1.clone().unwrap_or(LuaType::Any))
                    .unwrap_or(LuaType::Any),
                None => {
                    need_resolve_funcs[i] = None;
                    continue;
                }
            };

            let match_result = if param_type.is_any() {
                ParamMatchResult::AnyMatch
            } else if check_type_compact(db, &param_type, &expr_type).is_ok() {
                ParamMatchResult::TypeMatch
            } else {
                ParamMatchResult::NotMatch
            };

            if match_result > current_match_result {
                current_match_result = match_result;
                best_match_result = func.clone();
            }

            if match_result == ParamMatchResult::NotMatch {
                need_resolve_funcs[i] = None;
                continue;
            }

            if match_result > ParamMatchResult::AnyMatch
                && arg_index + 1 == expr_len
                && param_index + 1 == func.get_params().len()
            {
                return Ok(func.clone());
            }
        }

        if current_match_result == ParamMatchResult::NotMatch {
            break;
        }
    }

    let mut rest_need_resolve_funcs = need_resolve_funcs
        .iter()
        .filter_map(|it| it.clone())
        .map(|it| Some(it))
        .collect::<Vec<_>>();

    match rest_need_resolve_funcs.len() {
        0 => return Ok(best_match_result),
        1 => return Ok(rest_need_resolve_funcs[0].clone().unwrap()),
        _ => {}
    }

    let start_param_index = expr_len;
    let mut max_param_len = 0;
    for opt_func in &rest_need_resolve_funcs {
        if let Some(func) = opt_func {
            let param_len = func.get_params().len();
            if param_len > max_param_len {
                max_param_len = param_len;
            }
        }
    }

    let rest_len = rest_need_resolve_funcs.len();
    for param_index in start_param_index..max_param_len {
        let mut current_match_result = ParamMatchResult::NotMatch;
        for i in 0..rest_len {
            let opt_func = &rest_need_resolve_funcs[i];
            if opt_func.is_none() {
                continue;
            }
            let func = opt_func.as_ref().unwrap();
            let param_len = func.get_params().len();
            let colon_define = func.is_colon_define();
            let mut param_index = param_index;
            match (colon_define, is_colon_call) {
                (true, false) => {
                    if param_index == 0 {
                        continue;
                    }
                    param_index -= 1;
                }
                (false, true) => {
                    param_index += 1;
                }
                _ => {}
            }
            let param_type = if param_index < param_len {
                let param_info = func.get_params().get(param_index);
                param_info
                    .map(|it| it.1.clone().unwrap_or(LuaType::Any))
                    .unwrap_or(LuaType::Any)
            } else if let Some(last_param_info) = func.get_params().last() {
                if last_param_info.0 == "..." {
                    last_param_info.1.clone().unwrap_or(LuaType::Any)
                } else {
                    return Ok(func.clone());
                }
            } else {
                return Ok(func.clone());
            };

            let match_result = if param_type.is_any() {
                ParamMatchResult::AnyMatch
            } else if param_type.is_nullable() {
                ParamMatchResult::TypeMatch
            } else {
                ParamMatchResult::NotMatch
            };

            if match_result > current_match_result {
                current_match_result = match_result;
                best_match_result = func.clone();
            }

            if match_result == ParamMatchResult::NotMatch {
                rest_need_resolve_funcs[i] = None;
                continue;
            }

            if match_result >= ParamMatchResult::AnyMatch
                && i + 1 == rest_len
                && param_index + 1 == func.get_params().len()
            {
                return Ok(func.clone());
            }
        }

        if current_match_result == ParamMatchResult::NotMatch {
            break;
        }
    }

    Ok(best_match_result)
}

/// Map a (colon-adjusted) param index to a slot in the function's param list,
/// accounting for `...` that may sit before fixed trailing params. `v_idx` is
/// the cached variadic position from `variadic_param_index()`, and
/// `effective_arg_count` is the colon-adjusted total arg count (must match the
/// view that `param_index` is in).
/// Returns `None` when the index falls outside the function's param shape
/// (e.g. excess args for a non-variadic function).
fn pick_param_slot(
    func: &LuaFunctionType,
    v_idx: Option<usize>,
    param_index: usize,
    effective_arg_count: usize,
) -> Option<usize> {
    let params = func.get_params();
    let v_idx = match v_idx {
        Some(i) => i,
        None => {
            return if param_index < params.len() {
                Some(param_index)
            } else {
                None
            };
        }
    };
    let trailing = params.len() - v_idx - 1;

    if param_index < v_idx {
        return Some(param_index);
    }
    if trailing == 0 {
        // Variadic at the end: it absorbs everything from v_idx onward.
        return Some(v_idx);
    }
    let trailing_to_bind = trailing.min(effective_arg_count.saturating_sub(v_idx));
    if trailing_to_bind == 0 {
        return Some(v_idx);
    }
    let trailing_start = effective_arg_count - trailing_to_bind;
    if param_index < trailing_start {
        return Some(v_idx);
    }
    let last_slot = params.len() - 1;
    let first_bound_slot = last_slot - (trailing_to_bind - 1);
    let offset = param_index - trailing_start;
    if offset < trailing_to_bind {
        Some(first_bound_slot + offset)
    } else {
        None
    }
}

#[derive(Debug, PartialEq, Eq, PartialOrd, Ord, Clone, Copy)]
enum ParamMatchResult {
    NotMatch,
    AnyMatch,
    TypeMatch,
}

use rowan::TextRange;

#[derive(Debug, Clone, PartialEq, Eq, Hash)]
pub struct XmakeTarget {
    pub name: String,
    pub kind: XmakeTargetKind,
    pub range: TextRange,
}

#[derive(Debug, Clone, PartialEq, Eq, Hash, Copy)]
pub enum XmakeTargetKind {
    Target,
    Package,
    Rule,
    Option,
    Task,
    Toolchain,
}

impl XmakeTargetKind {
    pub fn parse(name: &str) -> Option<Self> {
        match name {
            "target" => Some(XmakeTargetKind::Target),
            "package" => Some(XmakeTargetKind::Package),
            "rule" => Some(XmakeTargetKind::Rule),
            "option" => Some(XmakeTargetKind::Option),
            "task" => Some(XmakeTargetKind::Task),
            "toolchain" => Some(XmakeTargetKind::Toolchain),
            _ => None,
        }
    }

    pub fn is_target(&self) -> bool {
        matches!(self, XmakeTargetKind::Target)
    }

    pub fn is_package(&self) -> bool {
        matches!(self, XmakeTargetKind::Package)
    }

    pub fn is_rule(&self) -> bool {
        matches!(self, XmakeTargetKind::Rule)
    }

    pub fn is_option(&self) -> bool {
        matches!(self, XmakeTargetKind::Option)
    }

    pub fn is_task(&self) -> bool {
        matches!(self, XmakeTargetKind::Task)
    }

    pub fn is_toolchain(&self) -> bool {
        matches!(self, XmakeTargetKind::Toolchain)
    }
}

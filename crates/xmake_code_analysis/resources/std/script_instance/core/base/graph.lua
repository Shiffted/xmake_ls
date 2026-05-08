---@meta
---[core.base.graph](https://xmake.io/api/scripts/extension-modules/core/base/graph)

---@class Graph
local Graph = {}

---
--- Add an edge.
---
---[Open in browser](https://xmake.io/api/scripts/extension-modules/core/base/graph#graph-add_edge)
---@param from any Source vertex
---@param to any Target vertex
---@return any ... -- ToDo
function Graph:add_edge(from, to) end

---
--- Add an isolated vertex.
---
---[Open in browser](https://xmake.io/api/scripts/extension-modules/core/base/graph#graph-add_vertex)
---@param v any Vertex value to add
---@return any ... -- ToDo
function Graph:add_vertex(v) end

---
--- Get adjacent edges of the given vertex.
---
---[Open in browser](https://xmake.io/api/scripts/extension-modules/core/base/graph#graph-adjacent_edges)
---@param v any Vertex value
---@return any ... -- ToDo
function Graph:adjacent_edges(v) end

---
--- Clear the graph.
---
---[Open in browser](https://xmake.io/api/scripts/extension-modules/core/base/graph#graph-clear)
---@return any ... -- ToDo
function Graph:clear() end

---
--- Clone the graph.
---
---[Open in browser](https://xmake.io/api/scripts/extension-modules/core/base/graph#graph-clone)
---@return any ... -- ToDo
function Graph:clone() end

---
--- Dump graph information.
---
---[Open in browser](https://xmake.io/api/scripts/extension-modules/core/base/graph#graph-dump)
---@return any ... -- ToDo
function Graph:dump() end

---
--- Get all edges.
---
---[Open in browser](https://xmake.io/api/scripts/extension-modules/core/base/graph#graph-edges)
---@return any ... -- ToDo
function Graph:edges() end

---
--- Check if the graph is empty.
---
---[Open in browser](https://xmake.io/api/scripts/extension-modules/core/base/graph#graph-empty)
---@return any ... -- ToDo
function Graph:empty() end

---
--- Find cycle in the graph.
---
---[Open in browser](https://xmake.io/api/scripts/extension-modules/core/base/graph#graph-find_cycle)
---@return any ... -- ToDo
function Graph:find_cycle() end

---
--- Check if the graph has the given edge.
---
---[Open in browser](https://xmake.io/api/scripts/extension-modules/core/base/graph#graph-has_edge)
---@param from any Source vertex
---@param to any Target vertex
---@return any ... -- ToDo
function Graph:has_edge(from, to) end

---
--- Check if the graph has the given vertex.
---
---[Open in browser](https://xmake.io/api/scripts/extension-modules/core/base/graph#graph-has_vertex)
---@param v any Vertex value to check
---@return any ... -- ToDo
function Graph:has_vertex(v) end

---
--- Check if the graph is directed.
---
---[Open in browser](https://xmake.io/api/scripts/extension-modules/core/base/graph#graph-is_directed)
---@return any ... -- ToDo
function Graph:is_directed() end

---
--- Get next node in topological order.
---
---[Open in browser](https://xmake.io/api/scripts/extension-modules/core/base/graph#graph-partial_topo_sort_next)
---@return any ... -- ToDo
function Graph:partial_topo_sort_next() end

---
--- Remove node and update in-degrees.
---
---[Open in browser](https://xmake.io/api/scripts/extension-modules/core/base/graph#graph-partial_topo_sort_remove)
---@param node any Node to remove from the sort
---@return any ... -- ToDo
function Graph:partial_topo_sort_remove(node) end

---
--- Reset partial topological sort state.
---
---[Open in browser](https://xmake.io/api/scripts/extension-modules/core/base/graph#graph-partial_topo_sort_reset)
---@return any ... -- ToDo
function Graph:partial_topo_sort_reset() end

---
--- Remove the given vertex.
---
---[Open in browser](https://xmake.io/api/scripts/extension-modules/core/base/graph#graph-remove_vertex)
---@param v any Vertex value to remove
---@return any ... -- ToDo
function Graph:remove_vertex(v) end

---
--- Reverse the graph.
---
---[Open in browser](https://xmake.io/api/scripts/extension-modules/core/base/graph#graph-reverse)
---@return any ... -- ToDo
function Graph:reverse() end

---
--- Perform topological sort.
---
---[Open in browser](https://xmake.io/api/scripts/extension-modules/core/base/graph#graph-topo_sort)
---@return any ... -- ToDo
function Graph:topo_sort() end

---
--- Get vertex at the given index.
---
---[Open in browser](https://xmake.io/api/scripts/extension-modules/core/base/graph#graph-vertex)
---@param idx number Vertex index (1-based)
---@return any ... -- ToDo
function Graph:vertex(idx) end

---
--- Get all vertices.
---
---[Open in browser](https://xmake.io/api/scripts/extension-modules/core/base/graph#graph-vertices)
---@return any ... -- ToDo
function Graph:vertices() end

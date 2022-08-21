# AUTO GENERATED FILE - DO NOT EDIT

export dashreactflow

"""
    dashreactflow(;kwargs...)

A DashReactFlow component.

Keyword arguments:
- `id` (String; required): The ID used to identify this component in Dash callbacks.
- `defaultEdgeOptions` (Dict; optional): The default edge options
- `edges` (Array of Dicts; optional): The edges which connect the flow chart
- `nodes` (optional): The nodes which make up the flow chart. nodes has the following type: Array of lists containing elements 'id', 'data', 'position'.
Those elements have the following types:
  - `id` (String; optional)
  - `data` (optional): . data has the following type: lists containing elements 'label'.
Those elements have the following types:
  - `label` (String; optional)
  - `position` (optional): . position has the following type: lists containing elements 'x', 'y'.
Those elements have the following types:
  - `x` (Real; optional)
  - `y` (Real; optional)s
"""
function dashreactflow(; kwargs...)
        available_props = Symbol[:id, :defaultEdgeOptions, :edges, :nodes]
        wild_props = Symbol[]
        return Component("dashreactflow", "DashReactFlow", "dash_react_flow", available_props, wild_props; kwargs...)
end



module DashReactFlow
using Dash

const resources_path = realpath(joinpath( @__DIR__, "..", "deps"))
const version = "0.0.1"

include("jl/dashreactflow.jl")

function __init__()
    DashBase.register_package(
        DashBase.ResourcePkg(
            "dash_react_flow",
            resources_path,
            version = version,
            [
                DashBase.Resource(
    relative_package_path = "dash_react_flow.min.js",
    external_url = "https://unpkg.com/dash_react_flow@0.0.1/dash_react_flow/dash_react_flow.min.js",
    dynamic = nothing,
    async = nothing,
    type = :js
),
DashBase.Resource(
    relative_package_path = "dash_react_flow.min.js.map",
    external_url = "https://unpkg.com/dash_react_flow@0.0.1/dash_react_flow/dash_react_flow.min.js.map",
    dynamic = true,
    async = nothing,
    type = :js
)
            ]
        )

    )
end
end

# AUTO GENERATED FILE - DO NOT EDIT

#' @export
dashReactFlow <- function(id=NULL, defaultEdgeOptions=NULL, edges=NULL, fitViewOptions=NULL, nodes=NULL) {
    
    props <- list(id=id, defaultEdgeOptions=defaultEdgeOptions, edges=edges, fitViewOptions=fitViewOptions, nodes=nodes)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'DashReactFlow',
        namespace = 'dash_react_flow',
        propNames = c('id', 'defaultEdgeOptions', 'edges', 'fitViewOptions', 'nodes'),
        package = 'dashReactFlow'
        )

    structure(component, class = c('dash_component', 'list'))
}

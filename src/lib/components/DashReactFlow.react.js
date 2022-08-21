import React, { useCallback } from 'react'
import PropTypes from 'prop-types'
import ReactFlow, {
  addEdge,
  useNodesState,
  useEdgesState
} from 'react-flow-renderer'

// const fitViewOptions = {
//   padding: 0.2
// }

const DashReactFlow = (props) => {
  const {
    id,
    nodes,
    edges,
    defaultEdgeOptions
  } = props

  const [currentNodes, setNodes, onNodesChange] = useNodesState(nodes)
  const [currentEdges, setEdges, onEdgesChange] = useEdgesState(edges)

  const onConnect = useCallback(
    (connection) => setEdges((eds) => addEdge(connection, eds)),
    [setEdges]
  )

  return (
    <ReactFlow
      id={id}
      nodes={currentNodes}
      edges={currentEdges}
      onNodesChange={onNodesChange}
      onEdgesChange={onEdgesChange}
      onConnect={onConnect}
      // fitViewOptions={fitViewOptions}
      defaultEdgeOptions={defaultEdgeOptions}
    />
  )
}

DashReactFlow.defaultProps = {
  nodes: [],
  edges: [],
  defaultEdgeOptions: { animated: true }
}

DashReactFlow.propTypes = {
  /**
   * The ID used to identify this component in Dash callbacks.
   */
  id: PropTypes.string.isRequired,

  /**
   * The nodes which make up the flow chart
   */
  nodes: PropTypes.arrayOf(
    PropTypes.shape({
      id: PropTypes.string,
      data: PropTypes.shape({
        label: PropTypes.string
      }),
      position: PropTypes.shape({
        x: PropTypes.number,
        y: PropTypes.number
      })
    })
  ),

  /**
   * The edges which connect the flow chart
   */
  edges: PropTypes.arrayOf(
    PropTypes.object
  ),

  /**
   * The default edge options
   */
  defaultEdgeOptions: PropTypes.object
}

export default DashReactFlow

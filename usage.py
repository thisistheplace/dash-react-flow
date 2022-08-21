import dash_react_flow
from dash import Dash, html, Input, Output, dcc

app = Dash(__name__)

initialNodes = [
  { "id": '1', "data": { "label": 'Node 1' }, "position": { "x": 5, "y": 5 } },
  { "id": '2', "data": { "label": 'Node 2' }, "position": { "x": 5, "y": 100 } },
];

initialEdges = [
  { "id": 'e1-2', "source": '1', "target": '2'},
];

fitViewOptions = {
  "padding": 0.2
}

app.layout = html.Div(
    [
      dcc.ConfirmDialog(
          id='confirm-edge',
          message='An edge has been added!',
      ),
      dash_react_flow.DashReactFlow(
          id='flow-chart',
          nodes=initialNodes,
          edges=initialEdges,
          fitViewOptions=fitViewOptions
      ),
    ],
    style={"width":"100vw", "height": "100vh"}
)

@app.callback(
  Output('confirm-edge', 'displayed'),
  Input('flow-chart', 'edges'),
  prevent_initial_callback=True
)
def new_edge_alert(new_edges):
  return True

if __name__ == '__main__':
    app.run_server(debug=True)

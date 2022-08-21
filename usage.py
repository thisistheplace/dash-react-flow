import dash_react_flow
from dash import Dash, html

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
    dash_react_flow.DashReactFlow(
        id='input',
        nodes=initialNodes,
        edges=initialEdges
    ),
    style={"width":"100vw", "height": "100vh"}
)

if __name__ == '__main__':
    app.run_server(debug=True)

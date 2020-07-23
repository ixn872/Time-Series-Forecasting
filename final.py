import dash
import plotly.express as px
import dash_core_components as dcc
import dash_html_components as html
import plotly.graph_objects as go
import bt


external_stylesheets = ['./assets/reset.css']

app = dash.Dash(__name__, external_stylesheets=external_stylesheets)


#app = dash.Dash()
app.layout = html.Div([
   dcc.Graph(figure=bt.graph_forecast())
])


app.debug=True
if __name__ == '__main__':
    app.run_server(host="0.0.0.0", port=80)

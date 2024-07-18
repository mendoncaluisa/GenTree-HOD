import dash
from dash import dcc, html
from dash.dependencies import Input, Output
import dash_bootstrap_components as dbc
from View import home_view
from Controller import home_controller
from Controller.controller import Controller

app = dash.Dash(__name__, suppress_callback_exceptions=True, external_stylesheets=[dbc.themes.BOOTSTRAP], url_base_pathname='/', assets_folder='./View/assets')

app.layout = html.Div([
    dcc.Location(id='url', refresh=False),
    html.Div(id='page-content')
])

@app.callback(Output('page-content', 'children'),
              [Input('url', 'pathname')])
def display_page(pathname):
    if pathname == '/':
        controller = Controller()
        data = controller.genTree()
        return home_view.layout(data)
    else:
        return '404'

home_controller.register_callbacks(app)

if __name__ == '__main__':
    app.run_server(debug=True)

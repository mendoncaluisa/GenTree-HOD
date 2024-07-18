import dash
from dash import dcc, html
from dash.dependencies import Input, Output

from View import home_view
from Controller import home_controller

app = dash.Dash(__name__, suppress_callback_exceptions=True, url_base_pathname='/', assets_folder='./View/assets')

app.layout = html.Div([
    dcc.Location(id='url', refresh=False),
    html.Div(id='page-content')
])



app.layout = html.Div([
    dcc.Location(id='url', refresh=False),
    html.Div(id='page-content')
])

# Roteamento de páginas
@app.callback(Output('page-content', 'children'),
              [Input('url', 'pathname')])
def display_page(pathname):
    if pathname == '/':
        # return page1_view.layout()
        return home_view.layout()
    # if pathname == '/page1':
    #     # return page1_view.layout()
    #     return home_view.layout()
    # elif pathname == '/page2':
    #     # return page2_view.layout()
    #     return home_view.layout()
    # else:
    #     return home_view.layout()

# Callbacks da página inicial
home_controller.register_callbacks(app)

# Callbacks da página 1
# page1_controller.register_callbacks(app)

# Callbacks da página 2
# page2_controller.register_callbacks(app)

if __name__ == '__main__':
    app.run_server(debug=True)

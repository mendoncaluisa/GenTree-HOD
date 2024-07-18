from dash import html, dcc
from dash.dependencies import Input, Output
from Model import data_model

def register_callbacks(app):
    @app.callback(
        Output('home-output', 'children'),
        [Input('home-button', 'n_clicks')]
    )
    def update_home_output(n_clicks):
        data = data_model.get_home_data()
        return f'Clique no botão: {n_clicks} Vezes. Data: {data}'

    def teste():
        return 'oi'
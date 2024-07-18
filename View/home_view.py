# import dash_html_components as html
from dash import html
def layout():
    return html.Div([
        html.H1('Home Page'),
        html.Button('Click me', id='home-button'),
        html.Div(id='home-output')
    ])

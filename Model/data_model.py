# import dash_html_components as html
from dash import dcc,html

def layout():
    return html.Div([
        html.H1('Home Page'),
        html.Button('Click me', id='home-button'),
        html.Div(id='home-output')
    ])
def get_home_data():
    # Função de exemplo para retornar dados do modelo para a página inicial
    return 'dados da página inicial'

def get_page1_data():
    # Função de exemplo para retornar dados do modelo para a página 1
    return 'dados da página 1'


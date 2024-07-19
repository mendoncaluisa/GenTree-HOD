import dash_bootstrap_components as dbc
from dash import dcc, html

PLOTLY_LOGO = "https://styles.redditmedia.com/t5_2vf7y/styles/communityIcon_9nbs2ss10b111.png"
BACKGROUND_THEME = 'https://images.wallpapersden.com/image/download/house-of-dragon-dragonstone_bWxpbmaUmZqaraWkpJRobWllrWZuZmg.jpg'
BACKGROUND = 'https://pbs.twimg.com/media/Ff2n8KhXgAAXgny?format=jpg&name=large'

def search():
    search_bar = dbc.Row(
        [
            dbc.Col(dbc.Input(type="search", placeholder="Search")),
            dbc.Col(
                dbc.Button(
                    "Search", color="primary", className="ms-2", n_clicks=0
                ),
                width="auto",
            ),
        ],
        className="g-0 ms-auto flex-nowrap mt-3 mt-md-0",
        align="center",
    )
    return search_bar

def navbar(search_bar):
    layout_nav = html.Div(style={'color': 'gray'}, children=[
        dbc.Row([
            dbc.Navbar(
                dbc.Container(
                    [
                        html.A(
                            dbc.Row(
                                [
                                    dbc.Col(html.Img(src=PLOTLY_LOGO, height="50px")),
                                    dbc.Col(dbc.NavbarBrand("GenTree House of Dragon", className="ms-2 col-12")),
                                ],
                                align="center",
                                className="g-0 d-flex justify-content-center text-center col-sm-12 col-mds-12 col-xl-12",
                            ),
                            href="https://plotly.com",
                            style={"textDecoration": "none"},
                        ),
                        # dbc.NavbarToggler(id="navbar-toggler", n_clicks=0),
                        # dbc.Collapse(
                        #     search_bar,
                        #     id="navbar-collapse",
                        #     is_open=False,
                        #     navbar=True,
                        # ),
                    ], className="d-flex justify-content-center text-center col-12",
                ),
                color="dark",
                dark=True,
                className="d-flex justify-content-center text-center col-12"
            ),
        ], justify="center", align="center")
    ])
    return layout_nav

def body_page(content, layout_nav):
    layout_page = html.Div([
        dbc.Container([
            dbc.Row([
                dbc.Col(layout_nav, width=12)
            ], className="d-flex justify-content-center text-center"),
            dbc.Row([
                dbc.Col(content, width=12)
            ], className="d-flex justify-content-center text-center")
        ], fluid=True)
    ])
    return layout_page

def content_page(content):
    return content

import dash_bootstrap_components as dbc
from dash import dcc, Input, Output, State, html
from dash_bootstrap_components._components.Container import Container


PLOTLY_LOGO = "https://styles.redditmedia.com/t5_2vf7y/styles/communityIcon_9nbs2ss10b111.png"
BACKGROUND_THEME = 'https://images.wallpapersden.com/image/download/house-of-dragon-dragonstone_bWxpbmaUmZqaraWkpJRobWllrWZuZmg.jpg'
BACKGROUND = 'https://pbs.twimg.com/media/Ff2n8KhXgAAXgny?format=jpg&name=large'
# PLOTLY_LOGO = "https://images.plot.ly/logo/new-branding/plotly-logomark.png"

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
                                    dbc.Col(dbc.NavbarBrand("GenTree House of Dragon", className="ms-2")),
                                ],
                                align="center",
                                className="g-0 d-flex justify-content-center text-center",
                            ),
                            href="https://plotly.com",
                            style={"textDecoration": "none"},
                            className="d-flex text-center col-md-9 col-lg-12 col-sm-9 justify-content-center"
                        ),
                        dbc.NavbarToggler(id="navbar-toggler", n_clicks=0),
                        dbc.Collapse(
                            id="navbar-collapse",
                            is_open=False,
                            navbar=True,
                            className="col-sm-2 mr-1",
                        ),
                    ]
                ),
                color="dark",
                dark=True,
                className="col-sm-12 col-md-12 col-lg-12",
            )
        ], align="center", className="bg-dark text-center text-white fs-3 mb-6"),
        
        dcc.Interval(id='interval-component', interval=1*1000, n_intervals=0)
    ])
    return layout_nav

def content_page(scopo):
    return scopo

def body_page(content, layout_nav):
    body = html.Div(style={
            "background-image": f"url('{BACKGROUND}')",
            "background-size": "cover",
            "background-repeat": "no-repeat",
            "background-position": "center",
            "height": "100vh",
            "width": "100vw",
            "position": "relative",
            "opacity": "0.9"
        }, 
        children=[
            html.Div(style={
                    "position": "absolute",
                    "top": "0",
                    "left": "0",
                    "right": "0",
                    "bottom": "0",
                    "background-color": "rgba(0, 0, 0, 0.5)",
                    "color": "white",
                    "padding": "2px"
                },
                children=[
                    layout_nav,
                    content,
                ]
            )
        ]
    )
    return body
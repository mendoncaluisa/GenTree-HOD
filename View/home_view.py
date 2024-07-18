# import dash_html_components as html

import dash_bootstrap_components as dbc
from dash import dcc, Input, Output, State, html
from dash_bootstrap_components._components.Container import Container
import View.layout as lay

PLOTLY_LOGO = "https://styles.redditmedia.com/t5_2vf7y/styles/communityIcon_9nbs2ss10b111.png"
BACKGROUND_THEME = 'https://images.wallpapersden.com/image/download/house-of-dragon-dragonstone_bWxpbmaUmZqaraWkpJRobWllrWZuZmg.jpg'
BACKGROUND = 'https://pbs.twimg.com/media/Ff2n8KhXgAAXgny?format=jpg&name=large'
# PLOTLY_LOGO = "https://images.plot.ly/logo/new-branding/plotly-logomark.png"

# content = ([])
content = html.Div([
        html.Div([
            html.Ul([
                html.Li([
                    html.A("Parent"),
                    html.Ul([
                        html.Li([
                            html.A("Child"),
                            html.Ul([
                                html.Li([
                                    html.A("Grand Child")
                                ])
                            ])
                        ]),
                        html.Li([
                            html.A("Child"),
                            html.Ul([
                                html.Li(html.A("Grand Child")),
                                html.Li([
                                    html.A("Grand Child"),
                                    html.Ul([
                                        html.Li(html.A("Great Grand Child")),
                                        html.Li(html.A("Great Grand Child")),
                                        html.Li(html.A("Great Grand Child"))
                                    ])
                                ]),
                                html.Li(html.A("Grand Child"))
                            ])
                        ])
                    ])
                ])
            ])
        ], className="tree")
    ], className="container")
search_page = lay.search()
layou_nav= lay.navbar(search_page)
content=lay.content_page(content)
body = lay.body_page(lay.content_page(content), layou_nav)
layout_template = html.Div([body])

def layout():
    return layout_template    
# return html.Div(style={'color': 'white','background-color':'black'}, 
    #     children=[
    #         html.H1('Home Page 1', className='text-light'),
    #         html.Button('Click me', id='home-button', className='btn btn-light'),
    #         html.Div(id='home-output', className='text-light')
    #     ],
    #     className="bg-dark"
    # )


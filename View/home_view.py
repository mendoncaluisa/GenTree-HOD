import dash_bootstrap_components as dbc
from dash import dcc, html
import View.layout as lay

PLOTLY_LOGO = "https://styles.redditmedia.com/t5_2vf7y/styles/communityIcon_9nbs2ss10b111.png"
BACKGROUND_THEME = 'https://images.wallpapersden.com/image/download/house-of-dragon-dragonstone_bWxpbmaUmZqaraWkpJRobWllrWZuZmg.jpg'
BACKGROUND = 'https://pbs.twimg.com/media/Ff2n8KhXgAAXgny?format=jpg&name=large'

def build_tree(tree):
    if not tree:
        return None

    children = []
    for name, subtree in tree.items():
        subtree_children = build_tree(subtree)
        if subtree_children:
            children.append(html.Li([html.A(name, id=name.replace(' ', '_')), html.Ul(subtree_children)]))
        else:
            children.append(html.Li(html.A(name, id=name.replace(' ', '_'))))

    return children

def create_content(data):
    content = dbc.Row(
        dbc.Col(
            html.Div(
                html.Ul(build_tree(data), className="tree"),
                className="d-flex justify-content-center"
            ),
            width=12,
            className="d-flex justify-content-center"
        ),
        className="d-flex justify-content-center mt-4"
    )
    return content

def layout(data):
    content = create_content(data)
    search_page = lay.search()
    layout_nav = lay.navbar(search_page)
    content = lay.content_page(content)
    body = lay.body_page(lay.content_page(content), layout_nav)
    layout_template = html.Div([body])
    return layout_template

import dash_bootstrap_components as dbc
from dash import dcc, Input, Output, State, html
import View.layout as lay

def build_tree(tree):
    if not tree:
        return None

    children = []
    for name, subtree in tree.items():
        subtree_children = build_tree(subtree)
        if subtree_children:
            children.append(html.Li([html.A(name), html.Ul(subtree_children)]))
        else:
            children.append(html.Li(html.A(name)))

    return children

def create_content(data):
    content = dbc.Row([html.Div([
            html.Div([
        html.Ul(build_tree(data))
    ], className="tree")], className="container m-0 p-1")],className="col-12")
    return content

def layout(data):
    content = create_content(data)
    search_page = lay.search()
    layou_nav = lay.navbar(search_page)
    content = lay.content_page(content)
    body = lay.body_page(lay.content_page(content), layou_nav)
    layout_template = html.Div([body])
    return layout_template

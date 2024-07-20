from dash import html, dcc
import dash_bootstrap_components as dbc
from dash import dcc, html, callback, Output, Input, State
from dash.dependencies import ALL
import dash

img_targaryen = {'Laenor Velaryon & Rhaenyra Targaryen':'https://awoiaf.westeros.org/images/thumb/d/da/Laenor%2C_Rhaenyra_and_baby_Jace_by_Jota_Saraiva.jpg/350px-Laenor%2C_Rhaenyra_and_baby_Jace_by_Jota_Saraiva.jpg',
                 'Rhaenyra Targaryen & Daemon Targaryen':'https://preview.redd.it/conceptual-art-of-daemon-and-rhaenyra-targaryen-v0-z61p8cubcsz91.jpg?width=1080&crop=smart&auto=webp&s=2bb619fb1cb3cb2b482ec6c0f395dbaded97ee64',
                 'Joffrey Targaryen':'https://assets.mycast.io/actor_images/actor-joffrey-velaryon-529136_small.jpg?1661858111',
                 'Jacaerys Targaryen':'https://i.redd.it/f9suruqvs3db1.png',
                 'Lucerys Targaryen':'https://static.wikia.nocookie.net/the-targaryen-realm/images/7/7e/Lucerys.jpeg/revision/latest?cb=20230428193014',
                 'Aegon III Targaryen & Daenaera Velaryon':'https://pbs.twimg.com/media/GBpRi5nW0AAHJrk.jpg',
                 'Viserys II Targaryen & Larra Rogare':'https://2.bp.blogspot.com/-VihGzreg-Aw/VO-ox_-h-aI/AAAAAAAAE8U/ofXOpdhQF50/s1600/102_0269-001.JPG',
                 'Daeron I Targaryen':'https://awoiaf.westeros.org/images/7/7a/DAERON_I.jpg',
                 'Baelor Targaryen':'https://wiki.geloefogo.com/images/0/0e/Baelor_I_Targaryen_Amoka.jpg',
                 'Daena Targaryen':'https://awoiaf.westeros.org/images/2/26/Daena.jpg',
                 'Rhaena Targaryen':'https://i.pinimg.com/originals/b1/61/e6/b161e636510564a38a0fc2bcba96c01b.png',
                 'Elaena Targaryen':'https://awoiaf.westeros.org/images/d/de/Elaena.jpg'}

def register_callbacks(app):
    # Callback para mostrar/ocultar o toggle e atualizar o conteúdo
    @callback(
        Output('toggle-content', 'className'),
        Output('toggle-content', 'children'),
        Input({'type': 'name-link', 'index': ALL}, 'n_clicks'),
        State('selected-name-store', 'data')
    )
    def toggle_content(n_clicks, selected_name):
        ctx = dash.callback_context
        if not ctx.triggered:
            return 'toggle-hidden', ''

        triggered_id = eval(ctx.triggered[0]['prop_id'].split('.')[0])
        selected_name = triggered_id['index'].replace('_', ' ')

        if any(n_clicks):
            content = html.Div([
                                dbc.Card(
                                    [
                                        dbc.CardImg(src=img_targaryen.get(selected_name, ''), top=True, className="img-fluid"),
                                        dbc.CardBody(
                                            [
                                                html.H4(selected_name, className="card-title"),
                                                html.P(selected_name, className="card-text"),
                                                dbc.Button("Sair", id='hide-toggle-button', color="danger"),
                                            ],
                                            className="d-flex flex-column align-items-center"  # Centralizar o conteúdo
                                        ),
                                    ],
                                    style={"width": "100%", "max-width": "20rem"},  # Ajuste o tamanho máximo
                                ),
                            ],
                            className='toggle-content p-3 border rounded shadow-sm',  # Adicione classes para padding e borda
                        )
            return 'toggle-visible', content
        return 'toggle-hidden', ''
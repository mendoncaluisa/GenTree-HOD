pai(Pai, Filho):- parents(Pai, Filho), male(Pai).
mae(Mae, Filho):- parents(Mae, Filho), female(Mae).
irmao(Irmao1, Irmao2):- parents(Pais, Irmao1), parents(Pais, Irmao2), Irmao1 \= Irmao2.
tio(Tio, Sobrinho):- parents(X, Sobrinho), irmao(Tio, X).
avo(Avo, Neto):- parents(Avo, Filho), parents(Filho, Neto).

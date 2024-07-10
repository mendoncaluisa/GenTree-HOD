father(Father, Son):- parents(Father, Son), male(Father).
mother(Mother, Son):- parents(Mother, Son), female(Mother).
sibilings(Sibilings1, Sibilings2):- parents(Fathers, Sibilings1), parents(Fathers, Sibilings2), Sibilings1 \= Sibilings2.
tio(Tio, Nephew):- parents(X, Nephew), Sibilings(Tio, X).
Grandparents(grandparents, Grandchild):- parents(grandparents, Son), parents(Son, Grandchild).

/*
    IDEIAS DE REGRAS
    * Ascendencia e descendencia 
*/
ancestral(X, Y) :- father(X, Y).
ancestral(X, Y) :- mother(X, Y).
ancestral(X, Y) :- father(X, Z), ancestral(Z, Y).
ancestral(X, Y) :- mother(X, Z), ancestral(Z, Y).

downward(X, Y) :- father(Y, X).
downward(X, Y) :- mother(Y, X).
downward(X, Y) :- father(Z, X), downward(Z, Y).
downward(X, Y) :- mother(Z, X), downward(Z, Y).

generation (X, Y, 1) :- father(X, Y).
generation(X, Y, 1) :- mother(X, Y).
generation(X, Y, N) :- father(Z, Y), generation(X, Z, M), N is M + 1.
generation(X, Y, N) :- mother(Z, Y), generation(X, Z, M), N is M + 1.


/*
    IDEIAS DE REGRAS
    * 
*/

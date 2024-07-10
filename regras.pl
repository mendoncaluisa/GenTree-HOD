/*      PAIS        */
/*      PAI         */
father(Father, Son):- parents(Father, Son), male(Father).
/*      MÃE         */
mae(Mae, Son):- parents(Mae, Son), female(Mae).

/*      IRMÃOS          */
/*     Any    male     */
brother(Sibilings, Brother):- parents(Fathers, Sibilings), parents(Fathers, Brother), male(Brother), Sibilings \= Brother.
/*     Any    female     */
sister(Sibilings, Sibilings2):- parents(Fathers, Sibilings), parents(Fathers, Sister), female(Sister), Sibilings \= Sister.

/*      TIOS        */
/*     aunt     Nephew      */
tia(Aunt, Nephew):- father(X, Nephew); mother(X, Nephew), sister(X, Aunt).
/*  Uncle  Nephew           */
tio(Uncle, Nephew):- father(X, Nephew); mother(X, Nephew),, brother(X, Uncle).

/*      GRANDPARENTS        */
/*      GRANDMOTHER -> MOTHER        */
grandparents(Grandparents, Grandson):- mother(Grandparents, Son), mother(Son, Grandson).
/*      GRANDFATHER -> MOTHER        */
grandparents(Grandparents, Grandson):- father(Grandparents, Son), mother(Son, Grandson).

/*      GRANDMOTHER -> FATHER        */
grandparents(Grandparents, Grandson):- mother(Grandparents, Son), father(Son, Grandson).
/*      GRANDFATHER -> FATHER        */
grandparents(Grandparents, Grandson):- father(Grandparents, Son), father(Son, Grandson).

/*      REGRAS COM CORTES           */
succession(Parents, Son):- father(Parents, Son); mother(Parents,Son), royalTitle(father, king)

/* FIRST-BORN */
/*  KING -> FIRST-BRON*/
king-first-born(King, first-born) :-
    first_born(King, first-born).
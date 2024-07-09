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
tia(Aunt, Nephew):- parents(X, Nephew), Sister(X, Aunt).
/*  Uncle  Nephew           */
tio(Uncle, Nephew):- parents(X, Nephew), Brother(X, Uncle).

/*      AVÓS        */
grandparents(Grandparents, Grandson):- parents(Grandparents, Son), parents(Son, Grandson).

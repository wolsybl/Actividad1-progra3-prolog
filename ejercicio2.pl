criminal(X) :- estadounidense(X), arma(Y), vende(X, Y, Z), hostil(Z).

misil(m1).
tiene(corea_del_sur, m1).

vende(coronel_west, X, corea_del_sur) :- misil(X), tiene(corea_del_sur, X).

arma(X) :- misil(X).

hostil(X) :- enemigo(X, estados_unidos).

enemigo(corea_del_sur, estados_unidos).
estadounidense(coronel_west).
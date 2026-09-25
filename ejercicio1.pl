hombre(abraham).
hombre(clancy).
hombre(herbert).
hombre(homero).
hombre(bart).

mujer(mona).
mujer(jacqueline).
mujer(marge).
mujer(patty).
mujer(selma).
mujer(lisa).
mujer(maggie).
mujer(ling).

padre(abraham, herbert).
padre(abraham, homero).
padre(clancy, marge).
padre(clancy, patty).
padre(clancy, selma).
padre(homero, bart).
padre(homero, lisa).
padre(homero, maggie).

madre(mona, homero).
madre(jacqueline, marge).
madre(jacqueline, patty).
madre(jacqueline, selma).
madre(marge, bart).
madre(marge, lisa).
madre(marge, maggie).
madre(selma, ling).

progenitor(X, Y) :- padre(X, Y).
progenitor(X, Y) :- madre(X, Y).

hijo(X, Y) :- hombre(X), progenitor(Y, X).
hija(X, Y) :- mujer(X),  progenitor(Y, X).

abuelo(X, Y) :- hombre(X), progenitor(X, Z), progenitor(Z, Y).
abuela(X, Y) :- mujer(X),  progenitor(X, Z), progenitor(Z, Y).
nieto(X, Y)  :- hombre(X), abuelo(Y, X).
nieto(X, Y)  :- hombre(X), abuela(Y, X).
nieta(X, Y)  :- mujer(X),  abuelo(Y, X).
nieta(X, Y)  :- mujer(X),  abuela(Y, X).

hermanos(X, Y) :-
    progenitor(P, X), progenitor(P, Y), X \= Y,
    \+ ( progenitor(Q, X), progenitor(Q, Y), Q @< P ).
hermano(X, Y) :- hombre(X), hermanos(X, Y).
hermana(X, Y) :- mujer(X),  hermanos(X, Y).

tio(X, Y)  :- hombre(X), hermanos(X, P), progenitor(P, Y).
tia(X, Y)  :- mujer(X),  hermanos(X, P), progenitor(P, Y).
sobrino(X, Y) :- hombre(X), progenitor(P, X), hermanos(P, Y).
sobrina(X, Y) :- mujer(X),  progenitor(P, X), hermanos(P, Y).

primos(X, Y) :- progenitor(A, X), progenitor(B, Y), hermanos(A, B), X \= Y.

ancestro(X, Y) :- progenitor(X, Y).
ancestro(X, Y) :- progenitor(X, Z), ancestro(Z, Y).
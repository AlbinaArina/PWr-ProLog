kobieta(zosia).
kobieta(ewa).
kobieta(amanda).

mezczyzna(tomek).
mezczyzna(adam).
mezczyzna(stefan).

matka(zosia, tomek).
matka(ewa, tomek).

ojciec(stefan, amanda).
ojciec(stefan, adam).
ojciec(adam, zosia).

rodzic(X,Y) :- matka(X,Y); ojciec(X,Y).

jest_matka(X) :- matka(X,_).
jest_ojcem(X) :- ojciec(X,_).
jest_synem(X) :- rodzic(_,X), mezczyzna(X).
jest_corka(X) :- rodzic(_,X), kobieta(X).
siostra(X,Y) :- rodzic(Z,X), rodzic(Z,Y), kobieta(X), X \= Y.
dziadek(X,Y) :- mezczyzna(X), rodzenstwo(X,Z), rodzic(Z,Y).
rodzenstwo(X,Y) :- rodzic(Z,X), rodzic(Z,Y), X \= Y.

wariancja(L, D) :-
    length(L, Dlugosc),
    sum_list(L, Suma),
    Srednia is Suma / Dlugosc,
    wariancja(L, Srednia, Dlugosc, 0, D).
wariancja([], _, Dlugosc, Sumy, D) :-
    D is Sumy / Dlugosc.
wariancja([X | L], Srednia, Dlugosc, Sumy, D) :-
    Y is X - Srednia,
    Kw is Y * Y,
    Sumy1 is Sumy + Kw,
    wariancja(L, Srednia, Dlugosc, Sumy1, D).

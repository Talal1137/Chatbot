male(ali).
male(alix).
female(alia).
female(aliana).

parent(ali, alix).
parent(alia, alix).
parent(ali, aliana).
parent(alia, aliana).


father(X, Y) :- male(X), parent(X, Y).

mother(X, Y) :- female(X), parent(X, Y).

brother(X, Y) :- male(X), parent(Z, X), parent(Z, Y), neq(X, Y).

sister(X, Y) :- female(X), parent(Z, X), parent(Z, Y), neq(X, Y).

sibling(X, Y) :- parent(Z, X), parent(Z, Y), neq(X, Y).

child(X, Y) :- parent(Y, X).

husband(X, Y) :- male(X), female(Y), parent(X, Z), parent(Y, Z).

wife(X, Y) :- female(X), male(Y), parent(X, Z), parent(Y, Z).
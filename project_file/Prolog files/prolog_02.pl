male(talal).
male(kamran).
female(noor).
female(minha).
female(sara).
female(safia).
female(fatima).

parent(talal, kamran).
parent(noor, kamran).
parent(talal, minha).
parent(noor, minha).
parent(kamran, sara).
parent(minha, sara).
parent(sara, safia).
parent(sara, fatima).

dada(X, Y) :- male(X), parent(X, Z), parent(Z, Y).
dadi(X, Y) :- female(X), parent(X, Z), parent(Z, Y).
chachu(X, Y) :- male(X), sibling(X, Z), parent(Z, Y).
khala(X, Y) :- female(X), sibling(X, Z), parent(Z, Y).
cousin(X, Y) :- parent(Z, X), parent(W, Y), sibling(Z, W).

foster_parent(X, Y) :- parent(X, Z), parent(Y, Z), not(parent(X, Y)), not(parent(Y, X)).
foster_son(X, Y) :- male(X), foster_parent(Y, X).
foster_daughter(X, Y) :- female(X), foster_parent(Y, X).

widow(X) :- female(X), parent(X, Y), not(husband(_, X)).
widower(X) :- male(X), parent(X, Y), not(wife(_, X)).

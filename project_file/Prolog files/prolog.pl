/* Facts */
male(ahmed).
male(asad).
male(bilal).
male(faisal).
male(raheel).
male(saad).
male(waqar).
male(umer).
male(zain).

female(amna).
female(asma).
female(fatima).
female(mehreen).
female(sadia).
female(sara).
female(zara).

parent(ahmed, asma).
parent(ahmed, zara).
parent(amna, asma).
parent(amna, zara).

parent(asad, fatima).
parent(asad, mehreen).
parent(asad, zain).
parent(sadia, fatima).
parent(sadia, mehreen).
parent(sadia, zain).

parent(bilal, saad).
parent(bilal, sara).
parent(mehreen, saad).
parent(mehreen, sara).

parent(faisal, raheel).
parent(faisal, waqar).
parent(zara, raheel).
parent(zara, waqar).

parent(raheel, umer).
parent(raheel, sadia).
parent(raheel, bilal).
parent(fatima, umer).
parent(fatima, sadia).
parent(fatima, bilal).

/* Rules */
father(X, Y) :- male(X), parent(X, Y).

mother(X, Y) :- female(X), parent(X, Y).

brother(X, Y) :- male(X), parent(Z, X), parent(Z, Y), \+(X = Y).

sister(X, Y) :- female(X), parent(Z, X), parent(Z, Y), \+(X = Y).

sibling(X, Y) :- parent(Z, X), parent(Z, Y), \+(X = Y).

child(X, Y) :- parent(Y, X).

husband(X, Y) :- male(X), female(Y), parent(X, Z), parent(Y, Z).

wife(X, Y) :- female(X), male(Y), parent(X, Z), parent(Y, Z).

/* Facts */
male(collin).
male(oliver).
male(sinclair).
male(henry).
male(mills).
male(klyde).

female(emma).
female(jessica).
female(maria).
female(norah).

parent_of(collin, maria).
parent_of(collin, norah).
parent_of(emma, maria).
parent_of(emma, norah).
parent_of(oliver, henry).
parent_of(jessica, henry).
parent_of(maria, mills).
parent_of(sinclair, mills).
parent_of(norah, klyde).
parent_of(henry, klyde).

/* Rules */
father_of(X,Y) :-
    male(X),
    parent_of(X,Y).

mother_of(X,Y) :-
    female(X),
    parent_of(X,Y).

grandfather_of(X,Y) :-
    male(X),
    parent_of(X,Z),
    parent_of(Z,Y).

grandmother_of(X,Y) :-
    female(X),
    parent_of(X,Z),
    parent_of(Z,Y).

sister_of(X,Y) :-
    female(X),
    parent_of(P,X),
    parent_of(P,Y),
    X \= Y.

brother_of(X,Y) :-
    male(X),
    parent_of(P,X),
    parent_of(P,Y),
    X \= Y.

aunt_of(X,Y) :-
    female(X),
    parent_of(Z,Y),
    sister_of(X,Z).

uncle_of(X,Y) :-
    male(X),
    parent_of(Z,Y),
    brother_of(X,Z).

ancestor_of(X,Y) :-
    parent_of(X,Y).

ancestor_of(X,Y) :-
    parent_of(X,Z),
    ancestor_of(Z,Y).

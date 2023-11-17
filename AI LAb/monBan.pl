% Domains
string(X) :- atom(X).

% Predicates
:- discontiguous take/2.
:- discontiguous move/2.
:- discontiguous get_on/2.
:- discontiguous hit/3.

take(X, X).
move(X, X).
get_on(X, X).
hit(X, X, X).

% Go clauses
go :-
    take("Monkey", "Stick"),
    move("Monkey", "Chair"),
    get_on("Monkey", "Chair"),
    hit("Monkey", "Stick", "Banana"),
    write("The monkey has hit the banana").

go :-
    write("The monkey couldnt reach the banana").

take(Animal, Object) :-
    format("Does the ~w take the ~w? (y/n)", [Animal, Object]),
    get_char(Reply),
    get_char(_), % consume the newline character
    (Reply = 'y' ; Reply = 'Y').

move(Animal, Object) :-
    format("Does the ~w move the ~w? (y/n)", [Animal, Object]),
    get_char(Reply),
    get_char(_), % consume the newline character
    (Reply = 'y' ; Reply = 'Y').

get_on(Animal, Object) :-
    format("Does the ~w get on ~w? (y/n)", [Animal, Object]),
    get_char(Reply),
    get_char(_), % consume the newline character
    (Reply = 'y' ; Reply = 'Y').

hit(Animal, Object, Fruit) :-
    format("Does the ~w hit the ~w with the ~w? (y/n)", [Animal, Fruit, Object]),
    get_char(Reply),
    get_char(_), % consume the newline character
    (Reply = 'y' ; Reply = 'Y').


parent(queen_elizabeth, prince_charles).
parent(queen_elizabeth, princess_anne).
parent(queen_elizabeth, prince_andrew).
parent(queen_elizabeth, prince_edward).

birth_order(1, prince_charles).
birth_order(2, princess_anne).
birth_order(3, prince_andrew).
birth_order(4, prince_edward).

successors(Parent, Successors) :-
    findall(Child, (
        parent(Parent, Child),
        birth_order(_, Child)
    ), Successors).

male(prince_charles).
female(princess_anne).
male(prince_andrew).
male(prince_edward).
female(queen_elizabeth).

parent(queen_elizabeth, prince_charles).
parent(queen_elizabeth, princess_anne).
parent(queen_elizabeth, prince_andrew).
parent(queen_elizabeth, prince_edward).

birth_order(1, prince_charles).
birth_order(2, princess_anne).
birth_order(3, prince_andrew).
birth_order(4, prince_edward).

successors(Parent, Successors) :-
    findall(MaleSuccessor, (
        parent(Parent, MaleSuccessor),
        male(MaleSuccessor),
        birth_order(_, MaleSuccessor)
    ), MaleSuccessors),
    findall(FemaleSuccessor, (
        parent(Parent, FemaleSuccessor),
        female(FemaleSuccessor),
        birth_order(_, FemaleSuccessor)
    ), FemaleSuccessors),
    append(MaleSuccessors, FemaleSuccessors, Successors).

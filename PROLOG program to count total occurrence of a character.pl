trace
domains
    x = integer
    l = integer*

predicates
    count(x,l,x)

clauses
    count(Element,[],0).

    count(Element,[X|List],OccurNum) :-
        Element = X,!,
        count(Element,List,OccurNum1),
        OccurNum = OccurNum1 + 1.

    count(Element,[X|List],OccurNum) :-
        count(Element,List,OccurNum).

Output :

Goal: count(2,[2,3,2,5,2,6],N)

N=3
1 Solution

Goal: count(2,[],N)

N=0
1 Solution
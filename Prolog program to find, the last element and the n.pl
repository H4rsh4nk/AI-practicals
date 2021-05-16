domains
    x = integer
    l = integer*

predicates
    find(l,x)

clauses

    find([],N) :-
        write(\"There is no such element in the list\"),nl.

    find([Element|List],1) :-
        write(\"The element is \",Element),nl.

    find([Element|List],N) :-
        N1 = N-1,
        find(List,N1).

Output :

Goal: find([1,2,3,4],3)
The element is 3
Yes

Goal: find([1,2,3,4],0)
There is no such element in the list
Yes

Goal: find([1,2,3,4],5)
There is no such element in the list
Yes

Goal: find([1,2,4,3],4)
The element is 3
Yes
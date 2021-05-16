domains
    x = integer
    l = integer*

predicates
    mergelist(l,l,l)

clauses
    mergelist([],[],[]).

    mergelist([X],[],[X]).

    mergelist([],[Y],[Y]).

    mergelist([X|List1],[Y|List2],[X|List]) :-
        X <= Y,!,
        mergelist(List1,[Y|List2],List).

    mergelist([X|List1],[Y|List2],[Y|List]) :-
        mergelist([X|List1],List2,List).

Output :

Goal: mergelist([1,3,5],[2,4,6],List)
List=[1,2,3,4,5,6]
1 Solution

Goal: mergelist([-1,1,4,5],[-3,0,2,3,5],List)
List=[-3,-1,0,1,2,3,4,5,5]
1 Solution
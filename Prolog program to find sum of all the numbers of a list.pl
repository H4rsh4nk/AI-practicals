domains

    list=integer*


predicates

    findsum(list)
    sum(list,integer)


clauses

    findsum(L):-
        sum(L,Sum),
        write(\"\\nSum Of Given List : \",Sum).

    sum([],0).

    sum([X|Tail],Sum):-
        sum(Tail,Temp),
        Sum=Temp+X.


OUT PUT
=======

Goal: findsum([1,2,3,4,5])

Sum Of Given List : 15

Yes

-------------------------------------

Goal: findsum([])

Sum Of Given List : 0

Yes

-------------------------------------

Goal: findsum([1,2,3,4,5,6,7,8,9,10])

Sum Of Given List : 55

Yes
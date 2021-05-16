domains

    list=integer*


predicates

    findnum(integer,list)


clauses

    findnum(X,[]):-
        write(\"\\nNumber Is Not Found\").

    findnum(X,[X|Tail]):-
        write(\"\\nNumber Is Found\").            

    findnum(X,[Y|Tail]):-
        findnum(X,Tail).


OUT PUT
=======

Goal: findnum(3,[1,2,3,4,5])

Number Is Found

Yes

----------------------------

Goal: findnum(6,[1,2,3,4,5])

Number Is Not Found

Yes

----------------------------

Goal: findnum(2,[1,2,2,1])

Number Is Found

Yes
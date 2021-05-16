domains
    person , password = symbol
predicates
    password_of(person,password)
    login
    count(integer)
    message(integer)

clauses
    password_of(Hetal,He).
    password_of(Prashant,pr).

    login :-
        makewindow(1,10,2,\"Login\",0,0,20,50),
        write(\"Welcome!   Please Login\"),nl,
        count(3),
        write(\"Login Unsuccessful\"),nl.

    login :-
        write(\"Login Successful\"),nl.

    count(X) :-
        X <> 0,
        write(\"UserName :- \"),
        readln(Username),
        write(\"Password :- \"),
        readln(Password),
        not(password_of(Username,Password)),
        Y = X - 1,
        clearwindow,
        message(Y),
        count(Y).
    count(0).        

    message(X) :-
        X <> 0,
        write(\"Login Failed\\nPlease Try Again!\\n\").

    message(0).

Goal
    login.


Output :    

Trial 1 :
ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄLoginÄÄÄÄÄÄÄ
³Welcome!   Please Login
³UserName :- Hetal
³Password :- He
³


ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄLoginÄÄÄÄÄÄÄÄÄÄÄÄ
³Login Failed
³Please Try Again!
³UserName :-
³

Final Trial :

ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄLoginÄÄÄÄ
³Welcome!   Please Login
³UserName :- Prashant
³Password :- pr
³Login Successful
³
³Press the SPACE bar
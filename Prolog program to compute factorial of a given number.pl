predicates
    start
    find_factorial(real,real)

goal
    clearwindow,
    start.

clauses
    start:-
        write(\"Enter non negative number = \"),
        readreal(Num),
        Result = 1.0,
        find_factorial(Num,Result).

    find_factorial(Num,Result):-
        Num <> 0,
        NewResult = Num * Result,
        NewNum = Num - 1,
        find_factorial(NewNum,NewResult).

    find_factorial(_,Result):-
        write(\"Factorial = \",Result),nl.
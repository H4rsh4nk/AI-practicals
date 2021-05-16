predicates
go
gcd(integer,integer)

clauses
go:-
write("Enter the first input X1::"),
readint(X1),
write("Enter the second input X2::"),
readint(X2),gcd(X1,X2).
gcd(X1,0):-
write(X1),nl.
gcd(0,X2):-
write(X2),nl.
gcd(X1,X2):-
     X1=X2,write(X1),nl.
gcd(X1,X2):-
     X1>X2,
     X3=X1 mod X2,gcd(X2,X3).
gcd(X1,X2):-
     X1<X2,
    gcd(X2,X1).

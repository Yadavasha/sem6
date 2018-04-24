
checklength(X):-
   findlen(X,Count),
   dislen(Count).
        
findlen([],X):-
    X is 0.
    
findlen([X|Tail],Count):-
    findlen(Tail,Prev),
    Count is Prev + 1.

dislen(C):-
    0 is mod(C,2),
    write("Length is even ").
dislen(C):-
    R is mod(C,2),
    R \= 0,
    write("Length is odd ").

cmod():-
R is mod(5,2),
R \= 0.
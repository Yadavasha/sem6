member(X,[X|Tail]).
member(X,[Head|Tail]):-
      member(X,Tail).
//returns true if present else false
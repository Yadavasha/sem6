del(X,[X|Tail],Tail).
del(X,[Head|Tail],[Head|Newtail]):-
     del(X,Tail,Newtail).


delpos(1,[Head|Tail],Tail).
delpos(N,[Head|Tail],[Head|Newtail]):-
     N1 is N-1,
     delpos(N1,Tail,Newtail).


printpos(1,[Head|Tail],Head).
printpos(N,[Head|Tail],R):-
     N1 is N-1,
     printpos(N1,Tail,R).
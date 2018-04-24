
maxele([X],X,X).
maxele([],M,M).
maxele([X|Tail],Imax,Max):-
    X>Imax,
      maxele(Tail,X,Max);
    X<Imax,
      maxele(Tail,Imax,Max).




//not working

maxlist([],N,Max).
maxlist([Head|Tail],N,Max):-
(
     N!=0 ->
      (
        N is 0,
        Max is 0
       );
      Max<Head->
       (
        Max is Head
       );
      maxlist(Tail,N,Max)
).


maxl([X],X,X).
maxl([X,Y|T],Inmax,Max):-
      X>Y,
      maxl([X|T],Inmax,Max);
      X<=Y,
      maxl([Y|T],Inmax,Max).

maxl578([X,Y|T],Max):-
      X<=Y,
      maxl578([Y|T],Max).





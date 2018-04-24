sublis([H1|S],[H2|L]):-
    H1==H2,
    sublis(S,L);
    sublis([H1|S],L).


sublis([],_).
sublis([X|T1],[X|T2)):-
   sublis(T1,T2).
sublis([X|T1],[_|T2]):-
   sublis([X|T1],T2).



merge([],[],[]).
merge([],L,L).
merge(L,[],L).
merge([H1|T1],[H2|T2],[H1|Result]):-
    H1<H2,
    merge(T1,[H2|T2],Result).
      
merge([H1|T1],[H2|T2],[H2|Result]):-
    H1>=H2,
     merge([H1|T1],T2,Result).








 

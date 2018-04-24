insert_nth(I,1,L,[I|L]).
insert_nth(I,1,[],[I]).
insert_nth(I,N,[Head|L],[Head|R]):-
    N1 is N-1,
    insert_nth(I,N1,L,R).
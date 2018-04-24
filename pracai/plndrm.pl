same([], []).   
same([H1|R1], [H2|R2]):-
    H1 == H2,
    same(R1, R2).

checkplndrm(List):-
    revlist(List,[],List3),
    same(List,List3).


revlist([],[],[]).
revlist([],M,M).
revlist([X|T1],List2,List3):-
      revlist(T1,[X|List2],List3).


reverse_list(Inputlist,Outputlist):-
    reverse(Inputlist,[],Outputlist).    
    reverse([],Outputlist,Outputlist).    

    reverse([Head|Tail],List1,List2):-
        reverse(Tail,[Head|List1],List2).

//single = also unifies if nt already unified whereas == only checks if //already identical

check([], []).   
check([H1|R1], [H2|R2]):-
    H1 = H2,
    check(R1, R2).
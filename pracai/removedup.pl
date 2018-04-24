removedup([],[]).
removedup([X],[X]).
removedup([H1|T1],[H1|Result]):-
  checkone(H1,T1,Result)
  removedup(T1,Result).
checkone(H1,[],[]).
checkone(H1,[H2|T1],[H1|Res]):-
    H1==H2,
    checkone(H1,T1,Res).
    
checkone(H1,[H2|T1],[H2|Res]):-
    H1 \= H2,
    checkone(H1,T1,Res).

remove_duplicates2([],[]).

remove_duplicates2([H],[H]).

remove_duplicates2([H,H|T],List) :-remove_duplicates2([H|T],List).

remove_duplicates2([H,Y|T],[H|T1]):- 
    Y \= H,
     remove_duplicates2([Y|T],T1).


toset(List,Set):-
  tosethelper(List,[],Set).
tosethelper([],Acc,Acc).
tosethelper([H|T],Acc,Set):-
 member(H,Acc),
 tosethelper(T,Acc,Set).
tosethelper([H|T],Acc,Set):-
tosethelper(T,[H|Acc],Set).
  
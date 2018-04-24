power(N,0,1).
power(0,P,0).
power(N,P,R):-
   P1 is P-1,
   power(N,P1,R1),
   R is N*R1.
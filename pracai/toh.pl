toh(1,Soc,Des,Aux):-
   write("Move disk 1 from "), 
   write(Soc), write(" to rod "), write(Des),
   write("\n").

toh(N,Soc,Des,Aux):-
   N1 is N-1,
    toh(N1,Soc,Aux,Des),
    write("Move disk "),write(N), 
    write(" from "), write(Soc), 
    write(" to rod "), write(Des),
    write("\n"),
    toh(N1,Aux,Des,Soc).
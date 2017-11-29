parent(adam, john).
parent(eve, john).
parent(eve, lisa).
parent(john, anne).
parent(john, pat).
parent(pat, jacob).
parent(carol, jacob).

prepend(X, Y,[X|Y]).
addElement(X,[ ],[X]).
addElement(X,[H|T],[H|Z]) :- addElement(X,T,Z).
hasLength([],0).
hasLength([_|X],L) :- hasLength(X,N),L is N+1 .
/*del(_,[],[]).
del(X, [X|L1],L2) :- del(X,L1,L2).
del(X, [H|L1],[H|L2]) :- X\==H,del(X,L1,L2).
*/
remove([Head|Tail], Head, Tail).
remove([Head|Tail], E, [Head|NewTail]):- remove(Tail, E, NewTail).
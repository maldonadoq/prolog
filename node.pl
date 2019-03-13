edge(d,h,1).
edge(h,f,4).
edge(i,f,4).
edge(f,a,3).
edge(a,b,6).
edge(f,g,2).
edge(d,i,3).
edge(b,y,3).

%edges
hedge(X):- edge(X,_,_).

% camino entre x,y
road(X,Y):-edge(X,Y,_).
road(X,Y):-edge(X,Z,_),road(Z,Y).

%go!
go(S,T,I,C):-edge(S,I,C1), edge(I,T,C2),
	C is C1+C2.

plus(0,0).
plus(N,R):- A is N-1, plus(A,T), R is N+T.
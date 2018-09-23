hijo(c,a).
hijo(b,a).
hijo(g,c).
hijo(e,b).
hijo(d,b).
hijo(f,e).
hijo(j,d).
hijo(h,d).
hijo(q,p).
hijo(r,q).
hijo(m,q).

desc(X,Y):-hijo(X,Y).
desc(X,Y):-hijo(X,Z),desc(Z,Y).

% M - M+1 - M+2 - ... - N
mayor(N,M):-M<N.
mayor(N,M):- write(N), A is N+1, tab(2), mayor(A,M).

% counter
cont(0,0).
cont(N,R):- A is N-1, cont(A,T), R is N+T.

% product
prod(0,1).
prod(N,R):- A is N-1, prod(A,T), R is N*T.

% pow
pot(_,0,1).
pot(X,N,R):-(N>=0,A is N-1, pot(X,A,T), R is X*T);write('N<0!!!').

/*func(X,Y):- Y is X+(X^2).
serie():-.
tserie:-write('Ingrese un Digito!!: '), nl, read(D),
*/

% plus N first even
supar(0,0).
supar(N,R):- A is N-1, supar(A,T), R is (2*N)+T.

% plus N first odd
suimpar(0,0).
suimpar(N,R):- A is N-1, suimpar(A,T), R is (2*N)+T-1.

% product N first even
prpar(0,1).
prpar(N,R):- A is N-1, prpar(A,T), R is (2*N)*T.

% product N first odd
primpar(0,1).
primpar(N,R):- A is N-1, primpar(A,T), R is ((2*N)-1)*T.

% message
tent:-write('Enter a Number!!: ').

% plus acumulate
tcont:- tent, nl, read(D),
	cont(D,R), write('Plus: '),write(R).

% factorial
tprod:- tent, nl, read(D),
	prod(D,R), write('Product: '),write(R).

/*
?- tprod.
Enter a Number!!: 
|: 6.
Product: 720
true .

?- tprod.
Enter a Number!!: 
|: 10.
Product: 3628800
true .
*/

% plus N first even number
tsuimpar:- tent, nl, read(D),
	suimpar(D,R), write('Plus '), write(D), write(' first odd number: '),write(R).

% plus N first even number
tsupar:- tent, nl, read(D),
	supar(D,R), write('Plus '), write(D), write(' first even number: '),write(R).
/*
?- tsupar.
Enter a Number!!: 
|: 10.
Plus 10 first even number: 110
true .

?- tsupar.
Enter a Number!!: 
|: 20.
Plus 20 first even number: 420
true .
*/

tsemp:- tent, nl, read(D),
	prpar(D,R1), primpar(D,R2), write('Semi-Sum: '), T is (R1+R2)/2, write(T).
/*
?- tsemp.
Enter a Number!!: 
|: 5.
Semi-Sum: 2392.5
true .

?- tsemp.
Enter a Number!!: 
|: 6.
Semi-Sum: 28237.5
true .
*/
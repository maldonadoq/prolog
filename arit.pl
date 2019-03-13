%op aritmethic
mat:-write('Enter Number A'),nl,read(A),
	write('Enter Number B'),nl,read(B), 
	P is A+B, S is A-B, D is A/B, R is A*B, 
	write(A),write('+'),write(B),write(': '),write(P),nl,
	write(A),write('-'),write(B),write(': '),write(S),nl,
	write(A),write('/'),write(B),write(': '),write(D),nl,
	write(A),write('*'),write(B),write(': '),write(R).

%func
func:-write('Enter Number: '),nl,read(A),(
	(A<2,S is sqrt(A^2 +1));
	(S is (A-2)/(A+2))
	),write(S).

%par
par:-write('Enter Number: '), nl, read(A), S is A mod 2,(
	(S\=0, write('Impar'));
	(write('Par'))
	).

%timet(n,t): t anhos trabajando.
timet(juan,14).
timet(pedro,11).
timet(jose,4).
timet(paul,1).
timet(arturo,5).
timet(tomas,23).
	
%ascenso
ascenso(N):-timet(N,T),(
	(T>10, write('Ascenso en Tramite'));	
	(R is 10-T,write('Espere '), write(R), write(' años para Presentar Solicitud'))
	).

planeta(mercurio, sws, 10000).
planeta(tierra, luna, 12000).
planeta(marte, phobos, 6500).
planeta(marte, deimos, 6500).

sate:-write('Planeta: '), nl, read(P), planeta(P,S,R), write(S).
plan:-write('Satelite: '), nl, read(S), planeta(P,S,R), write(P).
diam:-planeta(P,S,R),(R>11000, write(P)).

nfunct:-write('Enter Number: '), nl, read(N),(
		(N< -1, R is (N*N)-(2*N) ,write('Result: '),write(R));
		(N>=4, N<9, R is sqrt(2*N-8),write('Result: '),write(R));
		(N>=10, R is 4/((N*N)-N), write('Result: '),write(R))
	).
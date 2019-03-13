nace(juan,perez,fecha(23,02,1990)).
nace(luz,vasquez,fecha(19,02,1973)).
nace(blas,cruz,fecha(18,11,1989)).
nace(alejandra,cornejo,fecha(30,10,1997)).
nace(fredy,alvarez,fecha(01,11,1997)).

cumpleanhos:-write('ingrese apellido: '),read(A),nace(N,A,fecha(D,M,E)),MES is M-9,DIA is abs(D-26),EDAD is 2017-E,
			(		
				(MES>=0,write(N),write(' te falta '),write(MES),write(' mes/meses ')),
				(
					((DIA>=0,write(' y '),write(DIA),write(' dias'));
					(
						write(' y '),write(DIA),write(' dias')
					)),
					write(' cumplira '),write(EDAD),write(' anhos')
				);
				(
					write('Ya paso su cumpleanhos y tiene '),write(EDAD),write(' anhos')
				)
			).

	
48 ?- cumpleanhos.
ingrese apellido: cornejo.
alejandra te falta 1 mes/meses  y 4 diascumplira 20anhos

49 ?- cumpleanhos.
ingrese apellido: vasquez.
Ya paso su cumpleanhos y tiene 44 anhos
true.

funcion:-write('ingrese numero: '),read(N),
	(
		(N<-1, R is N*N-2*N,write('EL RESULTADO ES: '),write(R))
	).


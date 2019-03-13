par:-write('Enter Number: '), nl, read(A),S is A mod 2,(
	(S\=0, write('Impar'));
	(write('Par'))
	).

var:-write('Enter Number 1: '),nl, read(A),
	write('Enter Number 2: '),nl, read(B),
	P is A+B, C is A*B,
	write('Suma: '), write(P),nl,
	write('Producto: '), write(C).

timet(angel,10).
timet(brenda,11).
timet(carlos,12).
timet(david,13).
timet(enyel,14).
timet(fabio,15).
timet(gerard,1).
timet(humbert,2).
timet(ilario,3).
timet(julio,4).
timet(percy,5).
timet(luis,6).
timet(manuel,7).
timet(nando,8).
timet(pablo,9).

ascenso:-
write('ingrese nombre: '), read(N),timet(N,T),(
	(T>5, write('Ascenso en Tramite'));	
	(R is 5-T,write('Espere '), write(R), write(' años para Presentar Solicitud'))
	).


nfunct:-write('Enter Number: '), nl, read(N),(
		(N<0, R is 5/(N-5) ,write('Result: '),write(R));
		(N>=5, N<9, R is sqrt(N+1),write('Result: '),write(R));
		(N>10, R is 10/(N+2), write('Result: '),write(R));
		write('no pertenece')
	).


datos(cley,clensey,fecha(03,08,1995)).
datos(jessica,lopez,fecha(16,09,2000)).
datos(bryce,waker,fecha(25,05,1998)).
datos(hannah,baker,fecha(25,05,2015)).
datos(justin,star,fecha(24,05,1995)).

horoscopo(acuario,20,01,18,02).
horoscopo(psicis,19,02,20,03).
horoscopo(aries,21,03,19,04).
horoscopo(tauro,20,04,20,05).
horoscopo(geminis,21,05,20,06).
horoscopo(cancer,21,06,22,07).
horoscopo(leo,23,07,22,08).
horoscopo(virgo,23,08,22,09).
horoscopo(libra,23,09,22,10).
horoscopo(escorpio,23,10,21,11).
horoscopo(sagitario,22,11,21,12).
horoscopo(capricornio,22,12,19,01).

zodiac:-write('Apellido'), nl, read(A), datos(N,A,fecha(D,M,_)),(		
		(D<18, M=:=02, write('acuario'));
		(D<20, M=:=03, write('psicis'));
		(D<19, M=:=04, write('aries'));
		(D<20, M=:=05, write('tauro'));
		(D<20, M=:=06, write('geminis'));
		(D<22, M=:=07, write('cancer'));
		(D<22, M=:=08, write('leo'));
		(D<22, M=:=09, write('virgo'));
		(D<22, M=:=10, write('libra'));
		(D<21, M=:=11, write('escorpio'));
		(D<22, M=:=12, write('sagitario'));
		(D<19, M=:=12, write('capricornio'))
	).
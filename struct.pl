datos(percy,maldonado,fecha(23,04,1997)).
datos(tony,parilla,fecha(02,05,1998)).
datos(zack,densy,fecha(11,06,1999)).
datos(alex,zals,fecha(13,07,1996)).
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

% caso especial cuando el dia de hoy es 30 y nace un 1 del siguiente
% cumpleaños
cumpleanhos:-write('Apellido: '),nl, read(A),datos(N,A,fecha(D,M,E)),
	MN is M-5,DY is abs(D-23),AG is 2018-E,(
		(E>2018,write('Naciste en el Futuro?!!!'));(
			(MN>=0,write(N),write(' te falta '),write(MN),write(' mes(es) y ')),(
				write(DY),write(' días para cumplir '),write(AG),write(' años')
			);(
				write('Ya paso su cumpleaños y tiene '),write(AG),write(' años')
			)
		)
	).

/*
?- cumpleanhos.
Apellido: 
|: maldonado.
Ya paso su cumpleaños y tiene 21 años
true.

?- cumpleanhos.
Apellido: 
|: waker.
bryce te falta 0 mes(es) y 2 días para cumplir 20 años
true .

*/

% signo del zodiaco
zodiac:-write('Apellido'), nl, read(A), datos(N,A,fecha(D,M,_)),
	horoscopo(Z1,_,_,_,M),horoscopo(Z2,ID2,M,_,_),(
		write(N), write(' tu signo zodiacal el: '),
		(D<ID2, write(Z1));
		write(Z2)
	).	

/*
?- zodiac.
Apellido
|: maldonado.
percy tu signo zodiacal el: tauro
true.

?- zodiac.
Apellido
|: baker.
hannah tu signo zodiacal el: geminis
true.
*/
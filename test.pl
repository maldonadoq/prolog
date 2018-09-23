%soltero(t): t es soltero
soltero(enyel).
soltero(deivid).
soltero(cerpa).
soltero(maria).

%estudia(t1,t2): t1 estudia t2.
estudia(luis,edi).
estudia(luis,algebra).
estudia(luis,fisicai).
estudia(rosa,edii).
estudia(rosa,ami).
estudia(rosa,fisicai).
estudia(ana,fisicai).
estudia(ana,logica).
estudia(ana,ada).
estudia(josé,logica).
estudia(josé,amiii).
estudia(josé,ediiii).
estudia(pedro,fisicai).
estudia(pedro,edi).
estudia(pedro,algebra).

%amigo(t1,t2): t1 es amigo de t2
amigo(maria,enyel).
amigo(deivid,cerpa).
amigo(cerpa,luis).
amigo(cerpa,roger).
amigo(cerpa,marina).
amigo(deivid,luz).

%varon(t): t es varón
varon(cerpa).
varon(deivid).
varon(luis).
varon(roger).

%mujer(t): t es mujer
mujer(marina).
mujer(luz).

%a_v(t1,t2): t1 son los amigos varones de t2
a_v(T1,T2):-(amigo(T2,T1),varon(T1);amigo(T1,T2),varon(T1)).

%a_m(t1,t2): t1 son las amigas mujeres de t2
a_m(T1,T2):-(amigo(T2,T1),mujer(T1);amigo(T1,T2),mujer(T1)).

%progenitor(t1,t2): t1 es progenitor t2.
progenitor(clara,jose).
progenitor(tomas,jose).
progenitor(tomas,isabel).
progenitor(jose,ana).
progenitor(jose,patricia).
progenitor(patricia,jaime).

%hijo(t1,t2): t1 es hijo de t2
hijo(T1,T2):-progenitor(T2,T1).

%hermano(t1,t2): t1 es hermano de t2
hermano(T1,T2):-progenitor(X,T1),progenitor(X,T2),T1\=T2.

%pais(t): t es un pais
pais(peru).
pais(ecuador).
pais(colombia).
pais(mexico).
pais(argentina).
pais(chile).
pais(eeuu).
pais(bolivia).
pais(uruguay).
pais(brasil).
pais(españa).
pais(rusia).
pais(francia).
pais(alemania).
pais(ghana).
pais(taiwan).

%capital(t1,t2): t1 es capital de t2
capital(lima,peru).
capital(quito,ecuador).
capital(bogota,colombia).
capital(nuevo_mexico,mexico).
capital(buenos_aires,argentina).
capital(santiago,chile).
capital(washintong,eeuu).
capital(la_paz,bolivia).
capital(montevideo,uruguay).
capital(sao_paulo,brasil).
capital(madrid,españa).
capital(moscow,rusia).
capital(paris,francia).
capital(berlin,alemania).
capital(accra,ghana).
capital(taipei,taiwan).

%continente(t1,t2): t1 está en el continente t2
continente(peru,america).
continente(ecuador,america).
continente(colombia,america).
continente(mexico,america).
continente(argentina,america).
continente(chile,america).
continente(eeuu,america).
continente(bolivia,america).
continente(uruguay,america).
continente(brasil,america).
continente(españa,europa).
continente(rusia,europa).
continente(francia,europa).
continente(alemania,europa).
continente(ghana,africa).
continente(taiwan,asia).
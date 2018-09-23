%varon
varon(francisco).
varon(mario).
varon(eduardo).
varon(luis).
varon(alex).
varon(freddy).
varon(adolf).
varon(mateo).
varon(marcos).


%mujer
mujer(victoria).
mujer(alicia).
mujer(beatriz).
mujer(veronica).
mujer(ana).
mujer(mary).
mujer(martha).
mujer(marina).
mujer(sugey).
mujer(cara).


%esposos(t1,t2): t1 ^ t2 son esposos
esposos(francisco,victoria).
esposos(mario,alicia).
esposos(eduardo,veronica).


%papa(t1,t2): t1 es papá de t2
papa(francisco,alicia).
papa(francisco,marina).
papa(francisco,eduardo).
papa(mateo,mario).
papa(mateo,marcos).
papa(mateo,cara).
papa(mario,beatriz).
papa(mario,alex).
papa(mario,ana).
papa(eduardo,luis).
papa(freddy,mario).
papa(mario,adolf).


%mama(t1,t2): t1 es mamá de t2
mama(victoria,eduardo).
mama(victoria,marina).
mama(victoria,alicia).
mama(sugey,mario).
mama(sugey,marcos).
mama(sugey,cara).
mama(alicia,beatriz).
mama(veronica,luis).
mama(mary,mario).
mama(alicia,adolf).
mama(martha,alex).
mama(martha,ana).

%hermano(t1,t2): t1 es hermano de t2
hermano(T1,T2):-varon(T1),((papa(A,T1), papa(A,T2));(mama(B,T1), mama(B,T2))),T1\=T2.


%hermana(t1,t2): t1 es hermana de t2
hermana(T1,T2):-mujer(T1),((papa(A,T1), papa(A,T2));(mama(B,T1), mama(B,T2))),T1\=T2.


%tio(t1,t2): t1 es tio de t2
tio(T1,T2):-(mama(A,T2);papa(A,T2)),hermano(T1,A).


%tia(t1,t2): t1 es tia de t2
tia(T1,T2):-(mama(A,T2);papa(A,T2)),hermana(T1,A).


%abuelo(t1,t2): t1 es abuelo de t2
abuelo(T1,T2):-(papa(A,T2);mama(A,T2)),papa(T1,A).


%abuela(t1,t2): t1 es abuela de t2
abuela(T1,T2):-(papa(A,T2);mama(A,T2)),mama(T1,A).


%primo(t1,t2): t1 es primo de t2
primo(T1,T2):-varon(T1),(tio(A,T1);tia(A,T1)),(papa(A,T2);mama(A,T2)).


%prima(t1,t2): t1 es prima de t2
prima(T1,T2):-mujer(T1),(tio(A,T1);tia(A,T1)),(papa(A,T2);mama(A,T2)).


%mat_hermano(t1,t2): t1 es hermano de matrimo de t2
mat_hermano(T1,T2):-varon(T1),((papa(A,T1), mama(B,T1)),(papa(A,T2), mama(B,T2))),(esposos(A,B);esposos(B,A)),T1\=T2.
/*
?- mat_hermano(X,eduardo).
false.

?- mat_hermano(X,alicia).
X = eduardo ;
false.
*/

%mat_hermana(t1,t2): t1 es hermana de matrimo de t2
mat_hermana(T1,T2):-mujer(T1),((papa(A,T1), mama(B,T1)),(papa(A,T2), mama(B,T2))),(esposos(A,B);esposos(B,A)),T1\=T2.
/*
?- mat_hermana(X,eduardo).
X = alicia ;
X = marina ;

?- mat_hermana(X,alicia).
X = marina ;
false.
*/


%med_hermano(t1,t2): t1 es medio hermano de t2
med_hermano(T1,T2):-varon(T1),((papa(A,T1),papa(B,T2),mama(C,T1),mama(C,T2),A\=B);((mama(A,T1),mama(B,T2),papa(C,T1),papa(C,T2),A\=B))),T1\=T2.
/*
?- med_hermano(X,ana).
X = adolf ;
false.

?- med_hermano(X,beatriz).
X = alex ;
false.
*/


%med_hermana(t1,t2): t1 es medio hermana de t2
med_hermana(T1,T2):-mujer(T1),((papa(A,T1),papa(B,T2),mama(C,T1),mama(C,T2),A\=B);((mama(A,T1),mama(B,T2),papa(C,T1),papa(C,T2),A\=B))),T1\=T2.
/*
?- med_hermana(X,beatriz).
X = ana ;
false.

?- med_hermana(X,ana).
X = beatriz ;
false.
*/

%cunhado(t1,t2): t1 es cuñado de t2
cunhado(T1,T2):-(esposos(A,T2);esposos(T2,A)),(hermano(T1,A);hermano(A,T1)).
/*
?- cunhado(X,alicia).
X = marcos .
*/


%cunhada(t1,t2): t1 es cuñada de t2
cunhada(T1,T2):-(esposos(A,T2);esposos(T2,A)),(hermana(T1,A);hermana(A,T1)).
/*
?- cunhada(X,alicia).
X = cara .
*/

%tia tio abuelo abuela primo prima cuñado cuñada yerno yerna nuero nuero
%medio hermano
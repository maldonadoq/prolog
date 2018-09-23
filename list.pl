profesor([ortiz, bazurco, nina, osorio, vazques]).
cursos([numerico, estadistica, cal3, am3, am1]).

first([H|_],H).
dhead([_|Q],Q).
ctwo([A,A|_]).

search([H|_],H):- !.
search([_|Q],X):- search(Q,X).

len([],0).
len([_|Q],L):- len(Q,T), L is T+1.
tlen(A):- len(A,L), write('size: '), write(L).

delete([H|Q],H,Q).
delete([H|Q],X,L):- delete(Q,X,T), L = [H|T].

join([],L,L).
join(L,[],L).
join([H|Q],L,[H|W]):- join(Q,L,W).

print([]).
print([H|Q]):- write(H), tab(1), print(Q).

%reverse([],[]).
%reverse([H|Q],R):- reverse(Q,T), join(T,[H],R).

reverse([],Z,Z).
reverse([H|T],Z,A):- reverse(T,Z,[H|A]).

sum([],0).
sum([H|Q],R):- sum(Q,T), R is T+H.
tsum(L):- sum(L,R), write('Suma: '), write(R).

prd([],1).
prd([H|Q],R):- prd(Q,T), R is T*H.
tprd(L):- prd(L,R), write('Producto: '), write(R).

pot([],_,[-1]).
pot([H|Q],P,R):- W is H^P, pot(Q,P,T), R = [W|T].

concatena([], L, L).
concatena([X|L1], L2, [X|L3]) :- concatena(L1, L2, L3).

amenor(X, Y) :- name(X, L), name(Y, M), amenorx(L, M).
amenorx([], [_|_]).
amenorx([X|_], [Y|_]) :- X<Y.
amenorx([A|X], [B|Y]) :- A=B, amenorx(X, Y).


verify([],_).
verify([H|Q],X):- (H=:=X, write(X), nl, !); verify(Q,X).

compare([],_).
compare([H|Q],L):- verify(L,H), compare(Q,L).
/*
?- compare([1,2,3,4],[2,3,4,5]).
2
3
4
true.

?- compare([1,2,3,4,6],[6,2,3,4,5]).
2
3
4
6
true.
*/

inside([],_,0).
inside([H|Q],X,R):- ((H=:=X), R is 1, !); inside(Q,X,R).

add([H|Q],L,[H|W]):- join(Q,[L],W).

equal(X,Y,R):- (X=:=Y, R is 1; R is 0).
count([],_,0).
count([H|Q], X, R):- equal(H,X,E), count(Q,X,T), R is E+T.

tcount([],_):- !.
tcount([H|Q],R):- inside(R,H,B), (B =:= 0, count([H|Q],H,T), write(T), write(' repetidos de '), write(H), nl), tcount(Q,R).
% me falta añadir para evaluar que no se repita

/*
?- tcount([1,2,3,4],[]).
1 repetidos de 1
1 repetidos de 2
1 repetidos de 3
1 repetidos de 4
true .

?- tcount([1,2,3,4,4,4],[]).
1 repetidos de 1
1 repetidos de 2
1 repetidos de 3
3 repetidos de 4
2 repetidos de 4
1 repetidos de 4
true 

*/
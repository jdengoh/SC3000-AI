developed(sumsum,galactica-s3).
stole(stevey,galactica-s3).
boss_of(stevey,appy).
rivals(appy,sumsum).
rivals(sumsum,appy).
unethical(X):-
    stole(X,Y),
    boss_of(X,A),
    rivals(A,Z),
    developed(Z,Y).

	

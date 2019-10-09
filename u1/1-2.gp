read("u1/vigenere.gp");

c = "HLNFYJXPTGOFRTBXOFQHUMRFVJIEYMIZCEICENFKLMEUHIYTXTBPZEMLFRAAMMGIYVRNFMUFVCJKLOIYFGOJJMSIKJIZFIUUHLDOBOKDVVKFNLESJIHHNESTRPDLAPIMGIUUPPDLIFOHORAHITBGOU";

guess(c, n) = {
	local(a, k, v, i, j, w);
	k = vector(n);
	v = Vecsmall(c);
	for(i = 1, n,
	    w = vector(100);
		j = i;
		while(j <= length(v),
		    w[v[j]]++;
		    j = j + n
		);
		vecmax(w, &a);
		k[i] = (a - 69) % 26;
	);
	return(k);
}

trydec(c, n) = {
	local(k);
	k = guess(c, n);
	D(c, k);
}

print(trydec(c, 3));

\q

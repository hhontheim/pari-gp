E(m, k) = {
	local(v, k1, i);
	v = Vecsmall(m);
	k1 = vector(length(v));
	for (i = 1, length(k1), k1[i] = k[(i-1)%length(k)+1]);
	for (i = 1, length(k1), v[i] = v[i] + k1[i];
		if (v[i] > 90, v[i] = v[i] - 26);
		if (v[i] < 65, v[i] = v[i] + 26);
	);

	return(Strchr(v));
}

D(c, k) = {
	return(E(c, -k));
}


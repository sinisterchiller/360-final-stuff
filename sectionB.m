clear
clc

syms k s
g = 2/(s*(s+2)*(s+4));
e1 = simplifyFraction(k*g + 1);

[num, den] = numden(e1);
pretty(solve(num == 0, s, "MaxDegree", 3))

% rootlocus plot pt i
s = tf("s");
g = 2/(s*(s+2)*(s+4));
rlocus(g)

% poles for root locus part i
syms s
g = 2/(s*(s+2)*(s+4));
[num, den] = numden(g);
poles = solve(den == 0, s)


k = 5;
g5 = k*g; 
sg5 = s*g5
limits0 = limit(sg5, s, 0)


syms k s
K = k*(s + 2)/(s + 8)
g = 2/(s*(s+2)*(s+4));
e1 = simplifyFraction(K*g + 1)

[num, den] = numden(e1);
pretty(solve(num == 0, s, "MaxDegree", 3))

% root locus plot iii
s = tf("s")
K = (s + 2)/(s + 8);
gori = 2/(s*(s+2)*(s+4));
g = K*gori
rlocus(g)

% poles for root locus part iii
syms s
K = (s + 2)/(s + 8);
gori = 2/(s*(s+2)*(s+4));
g = K*gori
[num, den] = numden(g);
poles = solve(den == 0, s)
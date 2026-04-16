syms k1 k s r a y

g = k/((s + 6)*(s + 12));
e1 = a == r*k1 - y;
e2 = y == a*g;

sol = solve([e1, e2], [r, y]);
TF = simplifyFraction(sol.y/sol.r);
pretty(TF)

E = (1/s)*(1-TF);
ess = limit(s*E, s, 0)
pretty(ess)

solve(ess == 0, k1)
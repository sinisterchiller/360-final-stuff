syms a s b e f y r

gr = a*s + b;
g1 = 10/((s + 1)*(10*s + 1));
g2 = 1;

e1 = e == r*gr;
e2 = f == e - y*g2;
e3 = y == f*g1;

sol = solve([e1, e2, e3], [r, f, y])

TF = simplifyFraction(sol.y/sol.r)

pretty(TF)

E = (1/s^2)*(1 - TF)
solve(limit(s*E, s, 0) == 0, a)
syms a b ff fr g1 g2 g3 h2 r 

e1 = a == r - ff*h2 - fr*h2;
e2 = b == a*g1;
e3 = ff == b*g2;
e4 = fr == b*g3;

sol = solve([e1, e2, e3, e4], [r, b, ff, fr])
tranferfunc = simplifyFraction(sol.ff/sol.r)
pretty(tranferfunc)
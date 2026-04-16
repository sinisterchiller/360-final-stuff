syms a b c d e r y h1 h2 h3 g1 g2 s k

e1 = a == r - y;
e2 = b == a*k - e*h1;
e3 = c == b - d*h3 - e*h2; 
e4 = d == c*g1;
e5 = e == d*g2;
e6 = y == e/s;

sol = solve([e1, e2, e3, e4, e5, e6], [r, b, c, d, e, y])
transferfunc = simplifyFraction(sol.y/sol.r)
pretty(transferfunc)
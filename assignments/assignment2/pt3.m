syms r a b c d y s k1 k2 k3

e1 = a == r - c;
e2 = b == a/s - y;
e3 = c == b*k1;
e4 = d == c - y*k3;
e5 = y == d*k2/s;

sol = solve([e1, e2, e3, e4, e5], [r, b, c, d, y])
transferfunc = simplifyFraction(sol.y/sol.r)
pretty(transferfunc)
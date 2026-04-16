syms s c r1 r2 v1 v2

z1 = (r1 * 1/(s*c))/(r1 + 1/(s*c));
pretty(z1)

z2 = r2;

transferfunc = -z2/z1;
pretty(transferfunc)

pretty(simplifyFraction(transferfunc))
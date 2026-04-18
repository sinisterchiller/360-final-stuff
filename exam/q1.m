syms s K

G = K*(s+4)/(s*(s+2)^2*(s+6));
[num, den] = numden(1 + G);
char_eq = expand(num);
pretty(char_eq)

a4 = sym(1);
a3 = sym(10);
a2 = sym(28);
a1 = K + 24;
a0 = 4*K;

b1 = simplify((a3*a2 - a4*a1)/a3);
b2 = simplify((a3*a0 - a4*0)/a3);
c1 = simplify((b1*a1 - a3*b2)/b1);
d1 = a0;

Routh = [a4 a2 a0;
         a3 a1 0;
         b1 b2 0;
         c1 0  0;
         d1 0  0]

ineq1 = b1 > 0;
ineq2 = c1 > 0;
ineq3 = d1 > 0;

solve([ineq1, ineq2, ineq3], K, 'Real', true)

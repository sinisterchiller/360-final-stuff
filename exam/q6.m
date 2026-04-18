clear
clc

s = tf('s');
G = 1/(s^2 + 8*s + 32);

KI = 8;
Gc = (s + KI)/s;
L1 = Gc*G;

figure
rlocus(L1)
grid on
title('Root Locus for K_I = 8')

KI = 20;
Gc = (s + KI)/s;
L2 = Gc*G;

figure
rlocus(L2)
grid on
title('Root Locus for K_I = 20')


syms s K

charpoly = s^2 + (8 + 10*K)*s + 42;

D = simplify((8 + 10*K)^2 - 4*42)

sol = solve(D >= 0, K)
sol_stable = solve([D >= 0, 8 + 10*K > 0, 42 > 0], K)

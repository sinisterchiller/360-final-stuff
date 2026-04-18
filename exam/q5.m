clear
clc

syms s K tau Y R

Gc = K;
G = 5/(s*(s + 1));
H = tau*s;

eqn = Y == G*(Gc*(R - Y) - H*Y);

sol = solve(eqn, Y);
TF = simplifyFraction(sol/R)

[num, den] = numden(TF);
charpoly = expand(den)

coeffs_char = coeffs(charpoly, s, 'All')


PO = 20;
zeta = -log(PO/100)/sqrt(pi^2 + log(PO/100)^2);

Ts = 0.5;
wn = 4/(zeta*Ts);

K = wn^2/5
tau = (2*zeta*wn - 1)/5


syms s K tau

charpoly_q4 = expand(s*(0.2*s + 1)*(tau*s + 1) + K)

a3 = 0.2*tau;
a2 = tau + 0.2;
a1 = 1;
a0 = K;

routh_s1 = simplify((a2*a1 - a3*a0)/a2)

auxpoly = a2*s^2 + a0;
osc_eq = simplify(subs(auxpoly, s, 1i*5))

sol_q4 = solve([a2*a1 - a3*a0 == 0, K == 25*(tau + 0.2)], [K, tau])

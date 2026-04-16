syms s K

Gc = K/(0.1*s + 1);
G = 200/(s^2 + 25*s + 200);
closedloopTF = simplifyFraction(Gc*G);
pretty(closedloopTF)
sensitivity = 1/(1 + closedloopTF);
pretty(simplifyFraction(sensitivity))
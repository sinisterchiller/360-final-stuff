syms A s

tau = 0.001
G = 100/(s*(tau*s + 1));
Kp = limit(G, s, 0, "right");
Ess = A/(1 + Kp);

pretty(G)
pretty(Kp)
pretty(Ess)
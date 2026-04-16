syms K

R = (10/100)/s^2;
tau = 0.001;
G = 100/(s*(tau*s + 1));
E = R/(1 + K*G);
Ess = limit(s*E, s, 0);

solve(Ess == (0.1/1000), K)
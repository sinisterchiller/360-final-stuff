clear
clc

syms s
gp = 10/(s^2 * (s + 8));
pretty(gp)


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% part i %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% unity gain feedback poles
syms s
gp = 10/(s^2 * (s + 8));
e1 = simplifyFraction(1 + gp)
pretty(e1)
poles = vpa(solve(e1 == 0, s, "MaxDegree", 3), 4)
% bode plot
s = tf('s');
TF = 10/(s^2 * (s + 8));
margin(TF)
%%%%%%%%%%% number 1
%%%% a 
syms s t
f = t*exp(-t) + 2*t*cos(t)
transform = laplace(f, t, s);
pretty(transform)

%%%% b
syms s t
f = (sin(t))^2 + 3*(cos(t))^2
transform = laplace(f, t, s);
pretty(transform)
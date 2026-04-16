% syms r1 c s r2
clear
clc

r1 = 1;
r2 = 0.5; 
c = 0.5;
s = tf('s');
transferfunc = (1 + 2*r1*c*s + r1*r2*c^2*s^2)/(1 + (2*r1 + r2)*c*s + r1*r2*c^2*s^2);
z = zero(transferfunc)
p = pole(transferfunc)
pzmap(transferfunc)
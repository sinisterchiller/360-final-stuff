clear
clc

K = 10;
s = tf('s');

G = K/(s*(0.1*s + 1)*(10*s + 1));

figure
bode(G)
grid on

figure
margin(G)
grid on

[gm, pm, wcg, wcp] = margin(G)


w = 1
s = j*w
G = K/(s*(0.1*s + 1)*(10*s + 1))
abs(G)
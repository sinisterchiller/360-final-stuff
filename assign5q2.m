clear
clc

syms w

K = 5;

% phaseangleeqn = rad2deg(angle(TF))

% phaseanglesolve = phaseangleeqn == 180;

% vpasolve(phaseanglesolve, w)

% for w = 0:0.01:10000
%     s = j*w;
%     TF = K/(s*(s+1)*(s+4));
%     vpa(TF);
%     if (rad2deg(angle(TF)) >= -181) && (rad2deg(angle(TF)) <= -179)
%         rad2deg(angle(TF))
%         w
%     end
%     if (rad2deg(angle(TF)) >= 179) && (rad2deg(angle(TF)) <= 181)
%         rad2deg(angle(TF))
%         w
%     end
% end

s = tf('s')
TF = K/(s*(s+1)*(s+4));
margin(TF)
[Gm,Pm,Wcg,Wcp] = margin(TF);
gain = 20*log10(Gm)

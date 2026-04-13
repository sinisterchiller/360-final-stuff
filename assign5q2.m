clear
clc

syms w

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

K = 5;
s = tf('s')
TF = K/(s*(s+1)*(s+4));
margin(TF)
[Gm,Pm,Wcg,Wcp] = margin(TF);
GmdB = 20*log10(Gm)


for K = 0.01:0.01:19.99
    s = tf('s');
    TF = K/(s*(s+1)*(s+4));
    [GainMargin, PhaseMargin, PhaseCrossoverFreq, GainCrossoverFreq] = margin(TF);
    GainMargindB = 20*log10(GainMargin);
    error = abs(GainMargindB - 20);
    if error < 0.01
        GainMargindB
        K
    end
end

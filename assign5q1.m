clear
clc

w = 28.3;
s = j*w;

TF = (300*(s+100))/(s*(s+10)*(s+40));

TFsol = vpa(sym(TF))

TFmag = vpa(abs(sym(TF)))

TFmagdB = vpa(20*log10(TFmag))

TFangle = vpa(rad2deg(angle(TFsol)))
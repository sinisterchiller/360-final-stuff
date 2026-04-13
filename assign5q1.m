clear
clc

w = 28.3;
s = j*w;

TF = (300*(s+100))/(s*(s+10)*(s+40));

TFsol = vpa(sym(TF), 6)

TFmag = vpa(abs(sym(TF)), 6)

TFmagdB = vpa(20*log10(TFmag), 6)

TFangle = vpa(rad2deg(angle(TFsol)), 6)
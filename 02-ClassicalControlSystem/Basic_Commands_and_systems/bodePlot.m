clc
clear;
%over-Damped system
num=10;
den=[-1 ; -5;];
sys=tf(num,poly(den));
figure(1);
bode(sys);
grid;
title("Bode plot for over-dampd system");

%under-Damped system
num=1;
den=[1 2 10];
sys=tf(num,den);
figure(2);
bode(sys);
grid;
title("Bode plot for under-dampd system");
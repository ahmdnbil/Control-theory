clc;
clear;

Kc=1/5;
T=.02;
B=5;

s=tf('s');
Gc=Kc*B*((T*s+1)/(T*B*s+1));
frequencies=logspace(-.00000001,3,100000);
responce=freqresp(Gc,frequencies);
responce=squeeze(responce);
figure(1)
polarplot(angle(responce),abs(responce),LineWidth=2);

figure(2);
bode(Gc)
grid on;



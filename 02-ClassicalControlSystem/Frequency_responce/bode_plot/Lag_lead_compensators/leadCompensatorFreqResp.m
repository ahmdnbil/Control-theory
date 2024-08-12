clc;
clear;

Kc=1;
T=.02;
alpha=.2;

s=tf('s');
Gc=Kc*alpha*((T*s+1)/(T*alpha*s+1));
frequencies=logspace(-.00000001,4,100000);
responce=freqresp(Gc,frequencies);
responce=squeeze(responce);
figure(1)
polarplot(angle(responce),abs(responce),LineWidth=2);

figure(2);
bode(Gc)
grid on;



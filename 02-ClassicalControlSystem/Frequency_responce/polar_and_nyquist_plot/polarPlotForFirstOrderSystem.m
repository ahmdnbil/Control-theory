clc;
clear;

timeConstant=1/5;
s=tf('s');
G=1/(1+s*timeConstant);

freq=logspace(-1,3,1000);
H=freqresp(G,freq);
H=squeeze(H);

H_mag=abs(H);
H_phase=angle(H);

polarplot(H_phase,H_mag);
grid on;
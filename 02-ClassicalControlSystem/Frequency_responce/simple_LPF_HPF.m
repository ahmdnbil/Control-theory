clear;
clc;

s=tf('s');
%simple LPF
G1=1/(s+1);
%simple HPF
G2=(s+1);

figure(1);
bode(G1);
grid on;

figure(2);
bode(G2);
grid on;

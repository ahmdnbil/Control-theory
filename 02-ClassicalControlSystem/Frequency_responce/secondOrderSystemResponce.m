clear;
clc;

s=tf('s');
%critically damped system
G=1/(s^2+4*s+4);
figure(1)
[mag, phase, W]=bode(G);
grid on;

%with different zeta
Wn=2;%rad/sec
figure(2)
for zeta=.1:.1:1
    G2=1/(s^2+2*zeta*Wn*s+Wn^2);
    bode(G2);
    hold on;
end
grid on;
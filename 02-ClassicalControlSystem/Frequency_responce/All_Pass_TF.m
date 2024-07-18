clear;
clc;

s=tf('s');
a=2;
b=3;
G=((s-a)/(s+a))*((s-b)/(s+b));
figure(1)
bode(G);
grid on;
margin(G);

figure(2)
rlocus(G)
grid on;

figure(3)
step(G);
grid on;
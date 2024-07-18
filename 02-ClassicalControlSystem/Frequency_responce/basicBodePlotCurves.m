clc;
clear;

%defining complex frequency by 's'
s=tf('s');

%basic static gain
G1=tf(100,1);
figure(1)
bode(G1);
grid on;

%pole at origin
G2=1/s;
figure(2)
bode(G2);
grid on;


%zero at origin
G3=s;
figure(3)
bode(G3);
grid on;



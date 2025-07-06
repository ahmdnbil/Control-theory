clc;
clear;

A=[0 1 0;0 0 1; -1 -5 -6;];
B=[0;0;1;];

%desired Pole Location
P=[-10 -2-4i -2+4i];
k=acker(A,B,P);
disp(k);
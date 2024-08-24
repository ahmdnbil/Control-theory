clc;
clear;

s=tf('s');
G=(s+3)/(s^2+3*s+2);
%for den: b0=0      b1=1    b2=3
%for num: a0=1      a1=3    a2=2
b0=0; b1=1; b2=3;
a0=1; a1=3; a2=2;

%matrices
A=[0 1;-2 -3];
B=zeros(2,1);
B(end)=1;
C=[(b2-a2*b0) (b1-a1*b0)];
D=b0;
clc;
clear;

s=tf('s');
G=(s+3)/(s^2 +3*s+2);
b0=0;

%c1/(s+2) + c2/(s+1)
c1=-1;
c2=2;
Poles=pole(G);

%matrices
A=[Poles(1) 0;0 Poles(2)];
[m,n]=size(A);
B=ones(m,1);
C=[c1 c2];
D=b0;

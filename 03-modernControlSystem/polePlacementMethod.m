clc;
clear;

A=[0 1 0;0 0 1; -1 -5 -6;];
B=[0;0;1;];

%check controllability
Pc=[B A*B A*A*B];
Pc_det=det(Pc);
disp(Pc_det);
disp("since Pc is not zero system is controllable");

%get eigen values
eigenValues_A=eig(A);
eigenValues_A=eigenValues_A';
eigenValues_A_size=size(eigenValues_A);
eigenValues_A_size=eigenValues_A_size(2);

%determine coffections of |SI-A|=0
s=tf('s');
G=1;
for i=1:1:eigenValues_A_size
    G=G*(s-eigenValues_A(i));
end
% from G
a0=1;
a1=6;
a2=5;
a3=1;

%getting equation of required poles
G1=(s+2-4i)*(s+2+4i)*(s+10);

%from G1
alpha0=1;
alpha1=14;
alpha2=60;
alpha3=200;

K=[alpha3-a3 alpha2-a2 alpha1-a1];
%if state-space model not in any canonical form so you have to multiply K
%by invarse of T

%after getting K matrix
% if  you want to check use this: |SI - A + BK|
clc;
clear;

%state matrix
A=[0 1 0;0 0 1;-6 -11 -6];
%   Av=λv   A: Transformation matrix   v: eigen vector λ: eigen Value
%   Av=(λI)v   
%   |A - λI| =0     λ: eigen values
eigenValues_cal=eig(A);

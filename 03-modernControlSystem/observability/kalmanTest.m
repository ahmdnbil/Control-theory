clc;
clear;

A=[-2 1;0 -3;];
B=[4;1];
C=[1 0];

Po=[C; C*A;];

det_Pc=det(Po); %det is 1 so system is observable

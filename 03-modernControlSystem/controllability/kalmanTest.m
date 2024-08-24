clc;
clear;

A=[3 0;2 4;];
B=[0;1];

Pc=[B A*B];

det_Pc=det(Pc); %det is 0 so system is uncontrollable

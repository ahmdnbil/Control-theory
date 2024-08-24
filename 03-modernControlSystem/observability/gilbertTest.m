clc;
clear;

A=[0 1 0;0 0 1;0 -3 -4];
B=[0;0;1];
C=[2 3 1];


% eignen values
eigenValues=eig(A);
eigenValues=eigenValues';

% size
eigenValues_size=size(eigenValues);
eigenValues_size=eigenValues_size(2);

% form M-matrix
M=[ones(1,eigenValues_size);eigenValues;eigenValues.^2];

C_hat=C*M;
disp(C_hat);
disp("system is unobservable due to zero at Matrix")
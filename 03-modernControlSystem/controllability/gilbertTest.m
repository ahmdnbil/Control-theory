clc;
clear;

A=[0 1 0;0 0 1;-8 -14 -7];
B=[0;0;1];

% eignen values
eigenValues=eig(A);
eigenValues=eigenValues';

% size
eigenValues_size=size(eigenValues);
eigenValues_size=eigenValues_size(2);

% form M-matrix
M=[ones(1,eigenValues_size);eigenValues;eigenValues.^2];
M_inv=inv(M);

B_hat=M_inv*B;
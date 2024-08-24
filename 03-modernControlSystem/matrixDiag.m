clc;
clear;

% state matrix
A=[0 1 0;0 0 1;-6 -11 -6;];
B=[0;0;6];
% eigen Values
eigenValues_A=eig(A);
eigenValues_A=eigenValues_A';

% P matrix
P= [1 1 1;eigenValues_A;eigenValues_A.^2];

% invarse of P matrix
P_inv=inv(P);

% diagonal matrix
diag_mat=P_inv*A*P;

% P^-1 *B
B_P_inv=P_inv*B;
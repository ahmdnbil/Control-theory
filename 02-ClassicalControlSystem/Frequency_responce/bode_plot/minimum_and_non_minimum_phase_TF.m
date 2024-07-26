clear;
clc;

s=tf('s');

% minimum phase TF
G1=(s+1)/(s+2);
figure(1)
bode(G1)
grid on;
title('bode plot for minimum phase TF');
margin(G1)

% non-minimum phase TF
G2=(s-1)/(s+2);
figure(2)
bode(G2)
grid on;
title('bode plot for non-minimum phase TF');
margin(G2)

figure(3)
step(G1)
hold on;
step(G2)
legend('minimum','non-minimum');
grid on;
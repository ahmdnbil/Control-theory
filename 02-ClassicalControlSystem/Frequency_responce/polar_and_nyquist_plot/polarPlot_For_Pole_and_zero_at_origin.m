clear
clc

%pole at origin
s=tf('s');
G1=1/s;
%zero at origin
G2=s;

% Compute the frequency response
frequencies = logspace(-1, 2, 1000); % Frequency range from 0.1 to 100 rad/s
H_pole= freqresp(G1, frequencies);
H_zero=freqresp(G2,frequencies);

% Extract magnitude and phase
H_pole = squeeze(H_pole);
magnitude_pole = abs(H_pole);
phase_pole = angle(H_pole);

H_zero=squeeze(H_zero);
magnitude_zero = abs(H_zero);
phase_zero = angle(H_zero);

% Create the polar plot
figure(1);
polarplot(phase_pole, magnitude_pole, 'b', 'LineWidth', 2);
title('Polar Plot of Pole at origin');
grid on;

figure(2);
polarplot(phase_zero, magnitude_zero, 'b', 'LineWidth', 2);
title('Polar Plot of zero at origin');
grid on;

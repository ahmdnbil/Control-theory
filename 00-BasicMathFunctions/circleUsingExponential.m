clc;
clear;


% Define the range for theta
theta = linspace(0, 2*pi, 1000);

% Compute the points on the circle
circle_points = exp(1i * theta); % exp(j*theta) where j is the imaginary unit

% Plot the circle
figure;
plot(real(circle_points), imag(circle_points), 'LineWidth', 2);
axis equal; % Ensure the aspect ratio is equal to make the circle look like a circle
xlabel('Real');
ylabel('Imaginary');
title('Circle in the Complex Plane');
grid on;

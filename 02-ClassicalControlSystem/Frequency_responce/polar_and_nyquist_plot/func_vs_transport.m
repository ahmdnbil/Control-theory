clc;
clear;

s=tf('s');
T=-3;
transport_G=exp(T*s);
G=1/((s+3)*(s+1)*(s+2));

%frequencies;
frequencies=logspace(-1,2,10000);

%transport response
transport_G_Response=freqresp(transport_G,frequencies);
transport_G_Response=squeeze(transport_G_Response);

%system response
G_Response=freqresp(G,frequencies);
G_Response=squeeze(G_Response);

%magnitude and phase
%for transport
trnasport_mag=abs(transport_G_Response);
trnasport_phase=angle(transport_G_Response);
%for sys
G_mag=abs(G_Response);
G_phase=angle(G_Response);

figure(1);
polarplot(trnasport_phase,trnasport_mag);
hold on;
polarplot(G_phase,G_mag);
rlim([0 1.3]);
grid on;
hold off;

figure(2)
bode(G);
margin(G);

figure(3)
nyquist(G);
hold on;
theta = linspace(0, 2*pi, 1000);
x = cos(theta);
y = sin(theta);
plot(x, y, 'r--', 'LineWidth', 1.5);
ylim([-1.1 1.1]);
hold off;

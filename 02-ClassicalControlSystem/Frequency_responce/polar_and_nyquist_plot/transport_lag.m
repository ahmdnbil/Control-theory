clc
clear

s=tf('s');
T=-3;
%transport lag func
G1=exp(s*T);
%transport lag with pole at real axis
G2=G1*(1/(s+1));

frequencies=logspace(-1,2,10000);
response_G1=freqresp(G1,frequencies);
response_G1=squeeze(response_G1);

G1_phase = angle(response_G1);
G1_mag=abs(response_G1);

figure(1)
polarplot(G1_phase,G1_mag,"LineWidth",2);

response_G2=freqresp(G2,frequencies);
response_G2=squeeze(response_G2);

G2_phase = unwrap(angle(response_G2));
G2_mag=abs(response_G2);

figure(2)
polarplot(G2_phase,G2_mag,"LineWidth",2);


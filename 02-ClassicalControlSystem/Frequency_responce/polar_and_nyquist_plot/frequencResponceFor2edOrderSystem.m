clear;
clc;

s=tf('s');
G1=1/(s^2+12*s+4); % zeta =3
G2=1/(s^2+4*s+4); % zeta =1

%generate frequencies
frequencies=logspace(-1,3,1000);

%substitute the frequencies in sinsouidal TF
H_large_zeta=freqresp(G1,frequencies);
H_small_zeta=freqresp(G2,frequencies);

%remove not necessaries dimensions
H_large_zeta=squeeze(H_large_zeta);
H_small_zeta=squeeze(H_small_zeta);

%get the phase and magnitude
H_large_zeta_mag=abs(H_large_zeta);
H_large_zeta_phase=angle(H_large_zeta);

H_small_zeta_mag=abs(H_small_zeta);
H_small_zeta_phase=angle(H_small_zeta);

polarplot(H_small_zeta_phase,H_small_zeta_mag,'r','LineWidth',2);
hold on;
polarplot(H_large_zeta_phase,H_large_zeta_mag,'g','LineWidth',2);
legend("Zeta=1","Zeta=2");
hold off;
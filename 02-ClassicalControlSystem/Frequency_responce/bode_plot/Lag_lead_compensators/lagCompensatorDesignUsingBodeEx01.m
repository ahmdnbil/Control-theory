clc;
clear;

s=tf('s');
G=0.035/(s*(1+.5*s)*(1+.04*s));
figure(1)
bode(G);
margin(G)

%required kv=27.3
Kv_req=27.3;
Kv = dcgain(s * G); %already existed

%kv= 0.0350
%Gc(S)=K(1+Ts)/(1+TBs)   where K=KcB
% OLTF=Gc(s)*G(s)*H(s)   where H(s)=1
% so    Kv=K*G(s)=0.0350*K
K=Kv_req/Kv;
G1=G*K;
figure(2)
bode(G1);
margin(G1)

%from curve the curve the system is  unstable PM and GM are negative
%let's design compensator
error=5;
PM_req=45+error; %50
%Getting frequency at which PM will be 50 degree
phase_at_new_PM=-180+PM_req;
frequencies = logspace(-2, 2, 1000);
R= freqresp(G1, frequencies);
R = squeeze(R);
R_phase=angle(R)*180/pi;
[~, idx] = min(abs(R_phase - phase_at_new_PM));
freq_at_req_phase = frequencies(idx);
%let's get magnitude at this frequency
mag_at_req_freq=abs(freqresp(G1,freq_at_req_phase));
Beta=mag_at_req_freq;
Wcz=freq_at_req_phase/10;
T=1/Wcz;
Wcp=1/(Beta*T);

Gc=(1+s*T)/(1+s*Beta*T);
G_series_Gc=series(G1,Gc);
figure(3)
bode(G_series_Gc);
margin(G_series_Gc)
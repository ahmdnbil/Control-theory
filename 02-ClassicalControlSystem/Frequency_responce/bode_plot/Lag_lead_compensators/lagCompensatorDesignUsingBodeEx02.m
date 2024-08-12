clc;
clear;

s=tf('s');
G=280*(s+0.5)/(s*(s+.2)*(s+5)*(s+70));
Kv=dcgain(s*G);
%design reqs
ess_specified=.02;
Kv_req=1/ess_specified;
%G1=K*G  Kv_req=Kv*K
K=Kv_req/Kv;
G1=K*G;
figure(1);
bode(G1);
margin(G1);

%second design req
error=5;
PM_req=45+error;
phase_at_PM_req=-180+PM_req;
freqs=logspace(-1,2,1000);
R=freqresp(G1,freqs);
R=squeeze(R);
R_phase=angle(R)*180/pi;
[~, index]=min(abs(R_phase-phase_at_PM_req));
freq_req_at_PM_req=freqs(index);
Beta=abs(freqresp(G1,freq_req_at_PM_req));
Wcz=freq_req_at_PM_req/10;
T=1/Wcz;
Wpz=1/(Beta*T);
Gc=(s*T+1)/(s*Beta*T+1);
G_with_Gc=series(G1,Gc);

figure(2)
bode(G_with_Gc);
margin(G_with_Gc);
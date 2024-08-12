clc;
clear;

s=tf('s');
G=12/(s*(s+2));
Kv=dcgain(s*G);

%first design req: kv=24
Kv_req=24;
if Kv==0
    K=Kv_req;
else
    K=Kv_req/Kv;
end

%step1: form G1 and improve static error constant
G1=G*K;

%step2: calculate PM and Wgc
[GM, PM, Wpc, Wgc]=margin(G1);

%step3: required PM
PM_req=55;
error=5;
Phi_m=PM_req-PM+error; % Φm = PM_req - PM +error

%step4: calculate α 
% sin(Φm)=(1-α)/(1+α)  i have Φm and i want to get α so it will be like that
% α=(1-sin(Φm))/(1+sin(Φm))
alpha=(1-sind(Phi_m))/(1+sind(Phi_m));
M=sqrt(alpha);
%db gain=10*log10(α)   ===> at ====> W = Wm

%step5: getting frequency at mag=sqrt(alpha)  at which W=Wm
freqs=logspace(-1,2,1000);
R=freqresp(G1,freqs);
R=squeeze(R);
R_mag=abs(R);
[~, index]=min(abs(R_mag-M));
Wm=freqs(index);
%Wm = 1/(T*sqrt(α))
T=1/(Wm*M);

%step6: zero and pole frequency
Wz=1/T;
Wp=1/(alpha*T);

%step7: Kc
Kc=K/alpha;

%step8: Gc(s)
Gc=Kc*alpha*(T*s+1)/(T*alpha*s+1);

Gc_with_G=series(G,Gc);
figure(1)
bode(Gc_with_G);
margin(Gc_with_G);
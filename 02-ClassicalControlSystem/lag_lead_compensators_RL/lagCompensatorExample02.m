clear;
clc;

s=tf('s');
G=1.06/(s*(s+1)*(s+2));
sys=feedback(G,1);

%getting poles of system and making TF for Conjugate dominant poles
%which controlling steady state error and dynamic behaviour
P=pole(sys);
P= P(2:3);
TFforSecondOrderPoles=tf(1,poly(P));

[wn ,damping]=damp(TFforSecondOrderPoles);
wn=wn(1);
damping=damping(1);
alfa=acos(damping)*180/pi;

figure(1)
rlocus(G)
grid on;
xlim([-3 2])
sgrid(damping,[1 2 3]);

%getting Kv
Kv = dcgain(s * G);

%we need to make new Kv = 5
%if we make new kv the steady state error will decrease 1/1+kv
%for a lag compensator TF D(s)= Kc*(s+1/t)/(s+1/Bt)
% ζc = 1/t & Pc=1/Bt 
%ζc/Pc = beta
%B=new Kv/old Kv
new_kv=5;
Beta=new_kv/Kv;

%for lag compensator condition ζc >> Pc & ζc nearly equal Pc
%so let's choose Pc = .005
Pc =0.005;
zeta_c=Beta*Pc;

compensatorTF=tf([1 zeta_c],[1 Pc]);        
G_Compensated=series(compensatorTF,G);
figure(2)
rlocus(G_Compensated)
grid on;
xlim([-3 1])
ylim([-2 2])
hold on;
sgrid(damping,[1 2 3]);
kvCom=dcgain(s*G_Compensated);


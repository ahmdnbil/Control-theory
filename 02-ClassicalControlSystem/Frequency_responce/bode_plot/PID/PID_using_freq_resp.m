clc;
clear;

s=tf('s');
G=1/(s^2+1);
Kv=dcgain(s*G);
%design req1: Kv_req=4 sec^-1
Kv_req=4;
if Kv == 0
    K=Kv_req;
else
    K=Kv_req/Kv;
end

%PID can be expressed by the follwoing : K*(a*s+1)(b*s+1)/s
%we got K from the Kv and now gonna add pole at origin
Pole_at_origin=1/s;
G_with_pole_and_gain=G*K*Pole_at_origin;
figure(1)
bode(G_with_pole_and_gain);
[GM, PM, Wpc, Wgc]=margin(G_with_pole_and_gain);

%adding first zero: Wz1=1/5 rad/sec
first_zero=(5*s+1);
G_Gc1=G_with_pole_and_gain*first_zero;
figure(2)
bode(G_Gc1);
[GM_Gc1, PM_Gc1, Wpc_Gc1, Wgc_Gc1]=margin(G_Gc1);

%adding seond zero: Wz1=1/5 rad/sec
second_zero=(0.25*s+1);
G_Gc2=G_Gc1*second_zero;
figure(3)
bode(G_Gc2);
[GM_Gc2, PM_Gc2, Wpc_Gc2, Wgc_Gc2]=margin(G_Gc2);

PID_func=K*Pole_at_origin*first_zero*second_zero;
G_PID=series(PID_func,G);
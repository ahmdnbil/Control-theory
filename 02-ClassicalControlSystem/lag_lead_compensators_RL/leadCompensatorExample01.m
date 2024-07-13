clear;
clc;

s=tf("s");
G=10/(s*(s+1));
G_CL=feedback(G,1);
[Wn,zeta]=damp(G_CL);
Wn=Wn(1);
zeta=zeta(1);

%desired ζ=0.5 wn=3 rad/sec 
Required_zeta=0.5;
Required_Wn=3;
figure(1)
rlocus(G)
hold on
grid on
sgrid(Required_zeta,Required_Wn);


%after showing required pole position let's get these poles
dummy_G=1/(s^2+(Required_Wn*Required_zeta*2*s)+Required_Wn^2);
req_poles=pole(dummy_G);
%after getting required poles
%let's draw Wd
Wd=imag(req_poles(1));
yline(Wd);
yline(-Wd);

%after getting the required poles postion we gonna apply angle condition
%i'm gonna use the first pole
req_pole=req_poles(1);
%let's calculate the angle condition, recall "G"
G_p = evalfr(G, req_pole);
angle_diff=angle(G_p)*(180/pi);
%angle required to add
req_angle=180-angle_diff;
%after getting req_angle between the line of pole and zero we could add it
%easly and draw it
zeta_angle=acos(Required_zeta)*180/pi;
%angle between wd and zeta
angle_wd_zeta=180-zeta_angle;

%let's draw the line which will divide by 2 in the intersection between wd
%and zeta
%zeta angle + half of diff between zeta and wd
angle_of_line=(angle_wd_zeta/2)+zeta_angle;
angle_of_zero=angle_of_line-(req_angle/2);
angle_of_pole=angle_of_line+(req_angle/2);


%we got angle with zeta to get angle with x-axis
angle_of_zero_x_axis=180-angle_of_zero;
angle_of_pole_x_axis=180-angle_of_pole;

%get slope
pole_slope=tand(angle_of_pole_x_axis);
zero_slope=tand(angle_of_zero_x_axis);

% Calculate intercept
pole_real_part=real(req_pole);
pole_imag_part=imag(req_pole);
intercept_pole = pole_imag_part - pole_slope * pole_real_part;
intercept_zero = pole_imag_part - zero_slope * pole_real_part;
x_values = linspace(-5, 0.1, 100);
y_values_pole = pole_slope * x_values + intercept_pole;
y_values_zero = zero_slope * x_values + intercept_zero;
plot(x_values, y_values_zero, 'g--', 'LineWidth', 1.5);
plot(x_values, y_values_pole, 'g--', 'LineWidth', 1.5);
ylim([-4 4])
xlim([-6 .1])

%from drawing zero at -1.937 & pole at -4.65
Gc=(s+1.937)/(s+4.65);
G_with_compensator=series(G,Gc);
figure(2)
rlocus(G_with_compensator)
sgrid(Required_zeta,Required_Wn);
%getting Kc from drawing Kc=1.25
G_with_compensator_CL=feedback(G_with_compensator,1.25);
figure(3)
rlocus(G_with_compensator_CL)
sgrid(Required_zeta,Required_Wn);
hold off

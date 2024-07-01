%in this script i'm gonna controll this system 
% 3/(S+1)(S+3)
clc;
clear all;

%pkg load control;

num=[ 3 ];
den=poly([-1 -3]);
sys_OL=tf(num,den);

%overshoot needed to be 8% and Ts= .85 sec
%overshoot can get ζ
MP=.08;
Ts=.85;
zeta=abs(log(MP)/sqrt(pi^(2)+(log(MP))^(2)));
theta = acos(zeta);
%from settling time we could get ζWn
zetaWn=4/Ts;
%linespace it generates no from -10 to 10 with 1000 number between them 
x = linspace(-10, 17, 1000);
%lines of zeta
y_negative = x * -tan(theta);
y_positive = x * tan(theta);



figure(1)
rlocus(sys_OL)
grid on
hold on
% Plot the zeta line
plot(x, y_negative, 'r'); % Negative angle line
plot(x, y_positive, 'r'); % Negative angle line
yline(zetaWn);
yline(-1*zetaWn);
hold off

%adding pole as integral
sys_CL_integral=series(tf([1],[1 0]),sys_OL);
figure(2)
rlocus(sys_CL_integral)
hold on;
plot(x, y_negative, 'r'); % Negative angle line
plot(x, y_positive, 'r'); % Negative angle line
yline(zetaWn);
yline(-1*zetaWn);
grid on;
hold off

%after adding pole now we gonna calculate the angle required
%sys = 3/s(s+1)(s+3)
%to get s1 & s2 of the new postion i'm gonna draw figure to get the points
figure(3)
plot(x, y_negative, 'r'); % Negative angle line
hold on;
yline(zetaWn);
%from figure we get s1=-3.7+4.7i & s2=-3.7-4.7i due to conjugate poles
% we gonna calculate the angle for one pole only
theta_2=angle(3/((-3.7+4.7i)*(-3.7+4.7i+1)*(-3.7+4.7i+3)))*(180/pi);
x_newLine=4.7/tand(theta_2)-3.7;
y_newline= (x * -.251)+3.7713;
plot(x,y_newline,'r')
hold off

%adding zero and pole
sys_CL_PI=series(tf([1 -15],[1 0]),sys_OL);
figure(4)
rlocus(sys_CL_PI)
hold on;
plot(x, y_negative, 'r'); % Negative angle line
plot(x, y_positive, 'r'); % Negative angle line
yline(zetaWn);
yline(-1*zetaWn);
grid on;
hold off


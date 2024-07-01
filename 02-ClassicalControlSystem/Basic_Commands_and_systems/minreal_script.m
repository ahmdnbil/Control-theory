clear
clc

format compact
%define parameters
num=[1 3 2];
den=[1 2 -11 -12];

%after you run this you will find that this TF has a pole and zero has the
%same value so they should cansel each other but it will not do that for
%you so you should use "minreal" function
sys=tf(num,den)
roots(num)
roots(den)

%to make sure use "pzmap" plot to make sure
figure(1)
pzmap(sys)

%let's use minreal
sysMinreal= minreal(sys)
figure(2)
pzmap(sysMinreal)
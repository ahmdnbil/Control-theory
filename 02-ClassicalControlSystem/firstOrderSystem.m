clear all;
clc;

%for first order kdc and time constant are the properties fo the system

pole=[-2];
sys=tf(1,poly(pole));
figure(1)
step(sys)
hold on;
grid on;
ylim([0 .8])
stepinfo(sys)
timeConstant=-1/pole;

riseTime=2.2*timeConstant
settlingTime=3.91*timeConstant
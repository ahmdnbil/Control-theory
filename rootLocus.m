clc
clear all

%using equation parameters directly
num=[1];
den=[1 4 5];
sys=tf(num,den);
figure(1)
rlocus(sys)


%using pole zero method
zeros=[-4];
poles=[-1; -3;];
%poly: this functiion is used to generate the parameters of generated
%forumla
sys2=tf(poly(zeros),poly(poles))
figure(2)
rlocus(sys2)
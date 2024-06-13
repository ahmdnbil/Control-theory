clear all;
clc

pkg load control
%first case with ζ = 0
num=[4];
den=[1 0 4];
sys1=tf(num,den);
%figure(1)
step(sys1)
xlim([0 10]);
ylim([-3 3]);
grid on
title("step responce for ζ = 0 ")

%first case with ζ = 1
num=[4];
den=[1 4 4];
sys2=tf(num,den);
figure(2)
step(sys2)
xlim([0 4]);
ylim([0 2]);
grid on
title("step responce for ζ = 1 ")

%first case with 0 < ζ < 1
num=[4];
den=[1 1 4];
sys3=tf(num,den);
figure(3)
step(sys3)
xlim([0 8]);
ylim([0 2]);
grid on
title("step responce for 0 < ζ < 1 ")

%first case with ζ > 1
num=[4];
den=[1 5 4];
sys4=tf(num,den);
figure(4)
step(sys4)
xlim([0 8]);
ylim([0 2]);
grid on
title("step responce for ζ > 1")

figure(5)
step(sys1)
hold on
step(sys2)
step(sys3)
step(sys4)
xlim([0 10]);
ylim([0 3]);
grid on
legend("ζ = 0","ζ = 1","0 < ζ < 1","ζ > 1")

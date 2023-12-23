clear all;
clc
num = [1];
%critically damped system
den1=[1 4 4];
sys1=tf(num,den1);
%over damped system
den2 = [1 5 4];
sys2=tf(num,den2);
%under damped system
den3 = [1 2 4];
sys3=tf(num,den3);
t=0:.1:10;
y1=step(sys1,t);
y2=step(sys2,t);
y3=step(sys3,t);
plot(t,y1,t,y2,t,y3)
grid on
xlabel("Time (s)");
ylabel("Displasment");
legend("critical","over","under");

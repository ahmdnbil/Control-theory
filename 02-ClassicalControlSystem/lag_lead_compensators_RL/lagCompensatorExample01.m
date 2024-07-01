%changing zero position to change constant position
% to reduce steady state error

clear; 
clc;

sys_OL=tf(3,poly([-1 -3]));
sys_CL=feedback(sys_OL,1);
figure(1)
rlocus(sys_OL)
grid on;

sys_OL_Compensator=series(sys_OL,tf([1 .1],[1 .01]));
sys_CL_Compensator=feedback(sys_OL_Compensator,1);
figure(2)
rlocus(sys_OL_Compensator)
grid on;

figure(3)
step(sys_CL)
hold on;
grid on;
ylim([0 1.2])
for x=.1:.1:1
    sys_OL_Compensator=series(sys_OL,tf([1 x],[1 .01]));
    sys_CL_Compensator=feedback(sys_OL_Compensator,1);
    step(sys_CL_Compensator);
     
end
hold off;
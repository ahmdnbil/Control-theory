clear;
clc

num=1;
den=[0 ; -1; -2 ; -3];
sys=tf(num,poly(den));
figure(1);
rlocus(sys);
grid on;

%after showing the system, it's unstable due to teh zero at origin 
%so i decided to make the poles to make it stable and critically  damped

% i get this gain from the root locus curve
feedback_gain=.999;

%making feedback gain as a transfer function
feedback_sys=tf(feedback_gain,1);

%the following function will add the feedback to your system and get the
%equivalent G(s)
closedloop_sys=feedback(sys,feedback_sys);

%figure to root locus again to make sure the poles have moved 
figure(2);
rlocus(closedloop_sys)
grid on;

%comparison between open loop system and feedback system
figure(3);
step(sys)
hold on
step(closedloop_sys)
ylim([0, 2]);
xlim([0,30])
legend("open loop","closed loop");
grid on;
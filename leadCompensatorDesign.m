clear;
clc;

num=1;
den=[1 5 0];
sys=tf(num,den);
figure(1);
rlocus(sys);
grid;

%lead compensator pole and zero
%the main princible to choose pole and zero the "Angle condition"
lead_zero=[1 7];
lead_pole=[1 10];
lead_compensator_tf=tf(lead_zero,lead_pole);

%adding compensator TF to system
open_loop_tf=series(sys,lead_compensator_tf);

%feedback gain
%the main princible to choose Gain the "Magnitude condition"
feedback_gain=69;
feedback_sys=tf(feedback_gain,1);

%adding gain and close the loop with feedback
closed_loop_feedback=feedback(open_loop_tf,feedback_sys);

%ploting the rolcus after shifthing the pole and adding new pole and zero
figure(2);
rlocus(closed_loop_feedback);
grid;
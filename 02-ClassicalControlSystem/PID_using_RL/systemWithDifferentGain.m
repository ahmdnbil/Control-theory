clc
clear all;

%load control library
%pkg load control;

%declare the system
sys=tf([1 1],[1 10 0 0]);

%generating an graphical moving of poles and step function to system
for gain=1:.1:100
	closedLoopSys=feedback(series(sys,gain),1);
	figure(1)
	rlocus(closedLoopSys)
	figure(2)
	step(closedLoopSys)
	pause(0.001);
	
end;
	
clear all;

close all;
w=10;
A=1;
t=-10:0.01:10;
t0=3;
xt=A*rectpuls(t,w);
subplot(2,1,1);
plot(t,xt);
xlabel('Time');
ylabel('Amplitude');
title('Rectangular pulse');

xt=A*rectpuls(t-t0,w);
subplot(2,1,2);
plot(t,xt);
xlabel('Time');
ylabel('Amplitude');
title('Time Shifted By 3 Rectangular pulse');
clc;
clear all;
close all;
l=10;
t=-10:0.001:10;
xct =rectpuls(t,l);
subplot(2,2,1);
plot(t,xct);

w = -8*pi:0.01:8*pi;
for i=1:length(w)
    xcw(i)= trapz(t,xct.*exp(-j*w(i).*t));
end

subplot(2,2,2);
plot(w,xcw)
axis([-5 5 -5 10]);
title('Fourier Transform');
xlabel('w');
ylabel('X(w)');

subplot(2,2,3);
plot(w,abs(xcw))
axis([-5 5 0 10]);
title('Magnitude Spectrum');
xlabel('w');
ylabel('|X(w)|');

subplot(2,2,4);
plot(w,angle(xcw))
axis([-6 6 -4 4]);
title('Phase Spectrum');
xlabel('w');
ylabel('angle(X(w))');
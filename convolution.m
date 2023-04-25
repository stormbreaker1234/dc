clear all;
close all;
T=10;
t=-10:0.001:10;
xt1=rectpuls(t,T);
subplot(2,3,1);
plot(t,xt1);
xlabel('time');
ylabel('amp');
title('Signal-1');
xt2=rectpuls(t,T);
subplot(2,3,2);
plot(t,xt2);

xlabel('time');
ylabel('amp');

title('Signal-2');
xt=conv(xt1,xt2,'same');
subplot(2,3,3);
plot(t,xt);
xlabel('Time');
ylabel("Amp");
title("Convolved Signal of two similar signal");
w=-8*pi:0.01:8*pi;
for i=1:length(w)
    xw(i)=trapz(t,xt.*exp(-j*w(i).*t));

end
subplot(2,3,4);
plot(w,xw);
xlabel('Freq');
ylabel('XW');
title('Frequnecy Spectrum of convolved signal');

clc;
clear all;
close all;
N=100000;
x=randn(1,N);
u=mean(x);
s=var(x);
step=0.01
range=-3:step:3;
h=histc(x,range);
pdf=1/(sqrt(2*pi*s))*exp(-((range-u).^2)/2*s);
pdfs=h./(step*sum(h))
subplot(2,1,1);
plot(range,pdf,'*','MarkerSize',2);
title("Gaussian distri");
hold on;
plot(range,pdfs);
cdfn=cdf('Normal',range,u,s);
subplot(2,1,2);
plot(range,cdfn);
hold on;
N=size(h);
N=N(1,2);
cdfr=zeros(1,N);
cdfr(1)=h(1)/sum(h);
for i=2:N
    cdfr(i)=cdfr(i-1)+h(i)/sum(h);
end
plot(range,cdfr,'*','MarkerSize',1);
hold on;




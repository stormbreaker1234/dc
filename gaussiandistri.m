clc;
clear all;
close all;
n=10000;
r=randn(1,n);
mu=mean(r);
v=var(r);
sigma=var(r);
step=0.1;
range=-3:step:3;
h=histc(r,range);
pdfn=1/(sqrt(2*pi*sigma))*exp(-((range-mu).^2)/(2*sigma));
pdf=h./(step.*sum(h));
subplot(2,1,1);
plot(range,pdf,'*','markersize',10);
title("Gaussian Distribution")
hold on;
plot(range,pdfn);
cdfn=cdf('Normal',range,mu,sigma);

N=size(h);
N=N(1,2);
cdfr=zeros(1,N);
cdfr(1)=h(1)/sum(h);
for i=2:N
    cdfr(i)=cdfr(i-1)+h(i)/sum(h);
end
subplot(2,1,2);
plot(range,cdfn);
hold on;
plot(range,cdfr,'*','markersize',10);
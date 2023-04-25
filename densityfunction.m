clc;
clear;
close all;
N=100000;
x=rand(1,N);
step=0.1;
Range=-3:step:3;
h=histc(x,Range);
pdf=h./(step.*sum(h))
subplot(2,1,1)
plot(Range,pdf,'*','markersize',10)
b=1;
a=0;
N=size(h)

N=N(1,2)

hold on
syms X
f=rectangularPulse(a,b,X);
fplot(f)
hold on
cdff=zeros(1,N)
cdff(1)=h(1)/sum(h);
for i=2:N
    cdff(i)=cdff(i-1)+h(i)/sum(h)
end
subplot(2,1,2)
plot(Range,cdff,'*','markersize',15)
axis([-3 3 0 1.2])
hold on
cdf=int(f,X,-3,X)
fplot(cdf)
u=mean(x)
sigma=var(x)
clc;
clear all;
close all;
l=10;
t=-10:0.001:10;
xct =rectpuls(t,l);
subplot(2,2,1);
plot(t,xct);

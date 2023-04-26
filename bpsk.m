clc;
clear;
close all;

N = 10^6;
a=rand(1,N)>0.5;
s=2*a-1;
snr_dB=1:1:10;
snr_ratio=10.^snr_dB/10;
n=1/sqrt(2).*randn(1,N);
for i = 1:length(snr_dB)
    y=10^(snr_dB(i)/20).*s+n;
    a_dec=real(y)>0;
    nErr(i)=size(find(a-a_dec),2);
end
simBer = nErr/N;
theoryBer = 0.5*erfc(sqrt(10.^(snr_dB/10)));

figure
semilogy (snr_dB, theoryBer, 'b-', 'LineWidth', 1.5);
hold on
semilogy (snr_dB, simBer, 'x', 'MarkerSize', 8);
grid on
legend('theory', 'simulation');
xlabel('snr_db -->');
ylabel('bit error rate-->');
title('bit error probability curve for bpsk modulation');
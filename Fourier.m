clc;clear all,close all;
T1=1/2000;
L=1500;
t1=(0:L-1)*T1;
b=abs(t1);

xa=exp(-abs(1000*t1));

Y1=fft(xa);
P2=abs(Y1/L);
P1=P2(1:L/2+1);
P1(2:end-1)=2*P1(2:end-1);
f1=(0:(L/2))/L;
plot(f1,P1)
title('single-sided amplitude spectrum')
xlabel('f(Hz)')
ylabel('abs(f)')

clc,clear all,close all;
T1=.00005;
L=1500;
t1=(0:L-1)*T1;
b=abs(t1);
xa1=exp(-1000*b);
Y1=fft(xa1);
P2=abs(Y1/L);
P1=P2(1:L/2+1);
P1(2:end-1)=2*P1(2:end-1);
f1=Fs1*(0:(L/2))/L;
plot(f1,P1)
title('single-sided amplitude spectrum')
xlabel('f(Hz)')
ylabel('abs(f)')

Fs2=1000;
T2=1/Fs2;
t2=(0:L-1)*T2;

xa2=exp(-1000*b);
Y2=fft(xa2);
P2=abs(Y2/L);
P1=P2(1:L/2+1);
P1(2:end-1)=2*P1(2:end-1);
f2=Fs2*(0:(L/2))/L;
hold on
plot(f2,P1)
legend('Fs1=5000','Fs2=1000')


clc;clear all,close all
% y(n)=x(Mn)   downsampling
N_fft=1024
M=2;

[x,Fs]=audioread('Sample_8000.wav');

y=x(1:M:end);
sound (y,Fs)
figure
subplot(5,1,1)
plot(x)
grid on
ylabel('x')
subplot(5,1,2)
plot(y)
grid on
ylabel('x')
X=fft(x,N_fft)
Y=fft(y,N_fft)
f=[0:N_fft/2-1]/(N_fft/2);
figure

subplot(5,1,3),plot(f,abs(X(1:N_fft/2)))
subplot(5,1,4),plot(f,abs(Y(1:N_fft/2)))



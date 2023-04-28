clc;clear all,close all;
% y(n)=x(n/L) upsampling
N_fft=1024;
L=2;
[x,Fs]=audioread('Sample_8000.wav');

y=zeros(1,L*length(x));
y(1:L:end)=x;
sound (y,Fs)
figure,
subplot(5,1,1),plot(x)
grid on
xlabel('x')
figure,
subplot(5,1,2),plot(y)
grid on
xlabel('y')
X=fft(x,N_fft);
Y=fft(y,N_fft);
f=[0:N_fft/2-1]/(N_fft/2);
subplot(5,1,3),plot(f,abs(X(1:N_fft/2)))
subplot(5,1,4),plot(f,abs(Y(1:N_fft/2)))

%decimation
M=2;
N_fft=1024;

[x,Fs]=audioread('Sample_8000.wav');
y1=x(1:M:end);
y2=decimate(x,M);
sound(y2,Fs)
X=fft(x,N_fft);
Y1=fft(y1,N_fft);
Y2=fft(y2,N_fft);
f=[0:N_fft/2-1]/(N_fft/2);
subplot(3,1,1),plot(f,abs(X(1:N_fft/2)))
subplot(3,1,2),plot(f,abs(Y1(1:N_fft/2)))

subplot(3,1,3),plot(f,abs(Y2(1:N_fft/2)))
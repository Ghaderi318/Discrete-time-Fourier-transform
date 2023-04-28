clc , clear all , close all
num = [1, 0]; 
den = [1, -0.9]; 
[H,w] = freqz(num ,den ,501);
magH = abs(H); 
phaH = angle(H);
subplot (2,1,1);
plot(w/pi,magH);
grid 
xlabel('frequency in \pi units');
ylabel('Magnitude '); 
title('Magnitude Response ') 
subplot (2,1,2);
plot(w/pi,phaH/pi)
grid 
xlabel('frequency in \pi units');
ylabel('Phase in \pi units');
title('Phase Response ')

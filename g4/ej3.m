fm = 100;
fs = 10;
ti = 0;
tf = 1;
phs = 0;

[t,y] = seno(ti,tf,fm,fs,phs);

Y = fft(y, length(y));
N = length(Y);
j=17;
for k=1:N
  Y(k)=Y(k)*exp((-1i*2*pi*k*j)/N); #j .. muestras de retardo
endfor

y2 = ifft(Y);


[~,y3] = seno(0-j/100,1,fm,fs,phs);


figure(1)
subplot(3,1,1);
stem(t,y);
title('x[n]');
subplot(3,1,2);
stem(t,y2);
title('x[n] antitransformada');
subplot(3,1,3);
stem(t,y3(1:end-j));
title('x[n - j]');


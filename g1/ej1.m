ti = 0;
tf = 1;
fm = 50;
fs = 2;
phs = 0;

figure(1);
[x,y] = seno(ti,tf,fm,fs,phs);
stem(x,y);

figure(2);
[x,y] = sinc(ti,tf,fm,fs,phs);
stem(x,y);

figure(3);
[x,y] = cuadrado(ti,tf,fm,fs,phs);
stem(x,y);


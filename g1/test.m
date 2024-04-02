ti = 0;
tf = 1;
fm = 40;
fs = 0.5;
phs = 0;
figure(2);

[x,y] = sinc(ti,tf,fm,fs,phs);
stem(x,y);


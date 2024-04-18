ti = 0;
tf = 1;
fm = 10;
fs = 2;
phs = 0;

figure(1);
[x,y] = seno(ti,tf,fm,fs,phs);
stem(x,y);


figure(2);
[x,y] = interpolar(ti,tf,fm,fs,phs,@escalon);
stem(x,y);

figure(3);
[x,y] = interpolar(ti,tf,fm,fs,phs,@lineal);
stem(x,y);

figure(4);
[x,y] = interpolar(ti,tf,fm,fs,phs,@sinc2);
stem(x,y);


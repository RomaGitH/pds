ti = 0;
tf = 1;
fm = 10;
fs = 1;
phs = 0;

figure(1);
[x,y] = seno(ti,tf,fm,fs,phs);
stem(x,y);


figure(2);
[x,y] = iescalon(ti,tf,fm,fs,phs);
stem(x,y);

figure(3);
[x,y] = ilineal(ti,tf,fm,fs,phs);
stem(x,y);

figure(4);
[x,y] = isinc(ti,tf,fm,fs,phs);
stem(x,y);


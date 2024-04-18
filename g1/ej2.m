ti = 0;
tf = 1;
fm = 100;
fs = 4;
phs = 0;

figure(4);
[x,y] = inversion(ti,tf,fm,fs,phs);
stem(x,y);

figure(5);
[x,y] = rectificacion(ti,tf,fm,fs,phs);
stem(x,y);

figure(6);
[x,y] = cuantificacion(ti,tf,fm,fs,phs,8);
stem(x,y);

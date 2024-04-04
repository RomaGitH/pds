ti = 0;
tf = 2;
fm = 40;
fs = 1;
phs =1;

[x1, y1]  =  seno(ti, tf, fm, fs, phs);
[x2, y2] = aleatoria(ti, tf, fm, 1);

y  = y1 + y2';

y
stem(x1,y);


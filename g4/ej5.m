ti  = 0;
tf = 1;
##fm  = 50;
##fs = 27;
fm  = 100;
fs = 55;
## 110 - 100 = 10 -> (fs + 1) - 10 = 56 - 10 = 46
## 105 - 50 = 55 -> (fs + 1) - 55 = 51
## 54-50 = 4 -> (fs + 1) - 4 = 28 - 4  = 2
[t,z] = seno(ti,tf,fm,fs,0);

Y = abs(fft(z,length(z)));

df=fm/length(t);
k = df:df:fm;

stem(k,Y);

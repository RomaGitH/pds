## generacion de s[t]
f1=10;
f2=20;
tm=0.001;
fm=1/tm;
ti=0;
tf=1;
t=ti:tm:tf-tm;
s=sin(2*pi*f1*t) + 4*sin(2*pi*f2*t);

## S[k]
S = abs(fft(s, length(s)));
df=fm/length(t);
k=-fm/2:df:fm/2;

subplot(2,1,1);
stem(t,s);
subplot(2,1,2);
stem(k, [S(length(S)/2:end), S(1:length(S)/2)] );
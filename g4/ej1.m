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

mitad = (length(S)/2) + 1;


figure(1)
subplot(2,1,1);
stem(t,s);
title('Señal s[n]');
ylabel('s[n]');
xlabel('t');
subplot(2,1,2);
stem(k, [S(mitad:end), S(1:mitad)] );
title('Espectro de Magnitud');
ylabel('|S|');
xlabel('f');

# Relacion de Parseval para la TDF

E1 = s*s'
E2 = (1/length(S))*S*S'

# Cambios
# 1- se suma 4 a s;

s=sin(2*pi*f1*t) + 4*sin(2*pi*f2*t) + 4;
S = abs(fft(s, length(s)));

figure(2);
subplot(2,1,1);
stem(t,s);
title('Señal s[n] + 4');
ylabel('s[n]');
xlabel('t');
subplot(2,1,2);
stem(k, [S(mitad:end), S(1:mitad)] );
title('Espectro de Magnitud');
ylabel('|S|');
xlabel('f');

# 2- f2 = 20 hz-> f2 = 11hz;

s=sin(2*pi*f1*t) + 4*sin(2*pi*11*t);
S = abs(fft(s, length(s)));

figure(3);
subplot(2,1,1);
stem(t,s);
title('Señal s[n] con f2 = 11 hz');
ylabel('s[n]');
xlabel('t');
subplot(2,1,2);
stem(k, [S(mitad:end), S(1:mitad)] );
title('Espectro de Magnitud');
ylabel('|S|');
xlabel('f');

# 3- f2 = 20 hz-> f2 = 10.5 hz;

s=sin(2*pi*f1*t) + 4*sin(2*pi*10.5*t);
S = abs(fft(s, length(s)));

figure(4);
subplot(2,1,1);
stem(t,s);
title('Señal s[n] con f2 = 10.5 hz');
ylabel('s[n]');
xlabel('t');
subplot(2,1,2);
stem(k, [S(mitad:end), S(1:mitad)] );
title('Espectro de Magnitud');
ylabel('|S|');
xlabel('f');

# 4- t =[0s, 2s)

ti=0;
tf=2;
t=ti:tm:tf-tm;
s=sin(2*pi*f1*t) + 4*sin(2*pi*f2*t);
S = abs(fft(s, length(s)));
df=fm/length(t);
k=-fm/2:df:fm/2;
mitad = (length(S)/2) + 1;



figure(5);
subplot(2,1,1);
stem(t,s);
title('Señal s[n] en [0,2) seg');
ylabel('s[n]');
xlabel('t');
subplot(2,1,2);
stem(k, [S(mitad:end), S(1:mitad)] );
title('Espectro de Magnitud');
ylabel('|S|');
xlabel('f');


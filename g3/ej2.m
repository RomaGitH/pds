ti = 0;
tf = 2;
fm = 50;
fs = 2;
phi = 1;


[x1,y1] = seno(ti,tf,fm,fs,phi);

5
#...
a = 1; #Amplitud
b = 1;  #Frecuencia
c = 2*pi+1;  #Fase

[x2,y2] = seno(ti,tf,fm,b*fs,c*phi);
y2 = a.*y2;

punto = 0;
 for i=1:length(y1)
   punto += y1(i)*y2(i);
 endfor



figure(1);
subplot(2,1,1);
stem(x1,y1);
subplot(2,1,2);
stem(x2,y2);
title(['Producto punto = ', num2str(punto)]);


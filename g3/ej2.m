ti = 0;
tf = 2;
fm = 50;
fs = 2;
phi = 0;


[~,y1] = seno(ti,tf,fm,fs,phi);

#Amplitud
for i=1:100
   y2 = i.*y1;
   P(i) = y1*y2';
endfor

figure(1);
plot(i=1:100,P);
title('Amplitud');

#Frecuencia
for i=1:100
   [~,y2] = seno(ti,tf,fm,fs+i,phi);
   Q(i) = y1*y2';
endfor

figure(2);
stem(i=1:100,Q);
title('Frecuencia');

#Fase
for i=1:100
   [~,y2] = seno(ti,tf,fm,fs,phi+(i-1)*pi/20);
   R(i) = y1*y2';
endfor

figure(3);
plot(i=1:100,R);
title('Fase');





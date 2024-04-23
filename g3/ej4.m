ti=0;
tf=1;
fm=100;
phs = 0;
Amplitud=1;
x = ti:1/fm:tf-1/fm;

#Conjunto señales de 10 hz

senoidales = conjunto(10,ti,tf,fm,phs,Amplitud,1);

#Señal producto de la combinación lineal

A = [0 1 0 1 0 1 0 1 0 1];
w = A*senoidales;
B = zeros(1,10);
l=length(w);
#producto punto

for i=1:10
  for j=1:l
    B(i) += w(j) * senoidales(i,j);
  endfor
endfor
z = 1:1:10;
figure(1);
bar(z,B);
title('Combinacion lineal del conjunto');


#Conjunto señales de 10 hz en fase

senoidalesFase = conjunto(10,ti,tf,fm,1,Amplitud,12);

A = [0 1 0 1 0 1 0 1 0 1];
w = A*senoidalesFase;

B = zeros(1,10);

#producto punto

for i=1:10
  for j=1:l
    B(i) += w(j) * senoidales(i,j);
  endfor
endfor

z = 1:1:10;

figure(2);
bar(z,B);
title('Combinacion lineal de senosoidales con distinta fase');

#Señal cuadrada
[~,cuadrada] = cuadrado(ti,tf,fm,4.5,phs);

B = zeros(1,10);

#producto punto

for i=1:10
  for j=1:l
    B(i) += cuadrada(j) * senoidales(i,j);
  endfor
endfor

z = 1:1:10;

figure(3);
bar(z,B);
title('Señal cuadrada de 4.5 hz');


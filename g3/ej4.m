mm=0;

function y = conjunto(cant,ti, tf, fm, phs, A)
  y = zeros(10,fm);
  for i=1:cant
    [x,w] = seno(ti,tf,fm,i,phs);
    y(i,:) = A.*w;
  endfor
  endfunction

ti=0;
tf=1;
fm=100;
phs = 0;
A=1;
x = ti:1/fm:tf-1/fm;

y = conjunto(10,ti,tf,fm,phs,A);

#Señal producto de la combinación lineal

A = [1 0 0 0 2 0 0 0 8 0]';
w = A'*y
figure(2);
plot(x,w);

B = zeros(1,10);
l=length(w);

for i=1:10
  for j=1:l
    B(i) += w(j) * y(i,j);
  endfor
endfor

z = 1:1:10;

bar(z,B);

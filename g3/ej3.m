#funcion a aproximar
x = -1:0.01:1;
y = -1 .* (x<0) + 1 .* (x>=0);
figure(1);
plot(x,y);
hold on;


function y = legendre4(a1,a3)
    x = -1:0.01:1;
    y  = a1 .* ( sqrt(3/2) .* x) + a3 .* ( sqrt(7/2) .* (((5/2).*x.^3) - (3/2).*x));
endfunction


function y = legendre6(a1,a3,a5)
    x = -1:0.01:1;
    y  = a1 .* ( sqrt(3/2) .* x) + a3 .* ( sqrt(7/2) .* (((5/2).*x.^3) - (3/2).*x))+ a5.* (sqrt(11/2) .* ((63/8 .*x.^5) - (35/4 .*x.^3) + (15/8 .*x)));
endfunction


function x = ecm(y, yi)
    w = y - yi;
    x = 0;
    l = length(w);
    for i=1:l
      x+= w(i)^2;
    endfor
endfunction

function y = variar(x)
  #21 muestras...
y = [[x-1:0.1:x] [x+0.1:0.1:x+1]];
endfunction


#2 coeficientes

a = variar(sqrt(3/2));
b = variar(- sqrt(7/32));

for i=1:21
  for j=1:21
    W(i,j) = ecm(y,legendre4(a(i),b(j)));
  endfor
endfor


#3 coeficientes
c = variar(sqrt(11/128));

for i=1:21
  for j=1:21
    Z(i,j) = ecm(y,legendre6(a(i),b(j),c(j)));
  endfor
endfor

#Errores mínimos

aideal = sqrt(3/2);
bideal = - sqrt(7/32);
cideal = sqrt(11/128);

y1 =legendre4(aideal,bideal);
y2 =legendre6(aideal,bideal,cideal);
plot(x,y1);
plot(x,y2);
title("y(x) y aproximaciones");
legend("y(x)","Polinomio de Legendre orden 3","Polinomio de Legendre orden 5",'location', 'southeast');
legend();
hold off;

e4 = ecm(y,y1);
e6 = ecm(y,y2);


figure(2);
mesh(W);
title(["ECM en aproximación con 4 coeficientes, mínimo = ", num2str(e4)]);


figure(3);
mesh(Z);
title(["ECM en aproximación con 6 coeficientes, mínimo = ",num2str(e6)]);



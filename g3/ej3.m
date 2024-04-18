#funcion a aproximar

x = -1:0.01:1;
y = -1 .* (x<0) + 1 .* (x>=0);
plot(x,y);
hold on;
function y = legrende4(a1,a3)
    x = -1:0.01:1;
    y  = a1 .* ( sqrt(3/2) .* x) + a3 .* ( sqrt(7/2) .* (((5/2).*x.^3) - (3/2).*x));
  endfunction

function x = ecm(y, yi)
    w = y - yi;
    x = 0;
    for i=1:length(w)
      x+= w(i)^2;
    endfor
  endfunction

function y = variar(x)
y = [[x-1:0.1:x] [x+0.1:0.1:x+1]];
  endfunction
aideal = sqrt(3/2);
a = variar(sqrt(3/2));
bideal = - sqrt(7/32);
b = variar(- sqrt(7/32));

W = zeros(21,21);
for i=1:21
  for j=1:21
    W(i,j) = ecm(y,legrende4(a(i),b(j)));
  endfor
endfor

ecm(y,legrende4(aideal,bideal))
surf(a,b,W);
hold on;

for i=1:21
  for j=1:21
    P(i,j) = ecm(y,legrende4(aideal,bideal));
  endfor
endfor

surf(a,b,P);

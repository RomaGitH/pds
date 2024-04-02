#Interpolación lineal

function [xi,yi] = ilineal(ti, tf, fm, fs, phs)
  #y(n)
  tm = 1/fm;
  t = ti:tm:tf; #agrego un n para asi sumar los valores de y(10) e y(11)
  x=2*pi*fs*t + phs;
  y=sin(x);

  #yi(i)
  t4 = tm/4;
  tx = ti:t4:tf-t4;
  xi=2*pi*fs*tx + phs;
  yi = zeros(40,1);

for n=1:11
    for i=1:40
     yi(i) = yi(i) + y(n)*lineal((tx(i)-t(n))/tm);
   endfor
  endfor

endfunction


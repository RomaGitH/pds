
#Interpolación con funcion escalon

function [xi,yi] = interpolar(ti, tf, fm, fs, phs, interpolador)
  #y(n)
  tm = 1/fm;
  t = ti:tm:tf;
  x=2*pi*fs*t + phs;
  y=sin(x);

  #yi(i)
  t4 = tm/4; #cuadruple de la frecuencia

  tx = ti:t4:tf-t4;
  xi= 2*pi*fs*tx + phs;
  yi = zeros(40,1);

  for n=1:11
    for i=1:40
     yi(i) = yi(i) + y(n)*interpolador((tx(i)-t(n))/tm);
    endfor
  endfor

endfunction

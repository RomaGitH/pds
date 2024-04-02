function [xi,yi] = sobremuestra3 (ti, tf, fm, fs, phs)
  tm = 1/fm;
  t = ti:tm:tf; #agrego un n

  x=2*pi*fs*t + phs;
  y=sin(x);
  y
  t4 = tm/4;
  tx = ti:t4:tf-t4;
  xi=2*pi*fs*tx + phs;

  yi = zeros(40,1);

  for n=1:11
    for i=1:40

     yi(i) = yi(i) + y(n)*sinc2((tx(i)-t(n))/tm);

   endfor
  endfor

endfunction


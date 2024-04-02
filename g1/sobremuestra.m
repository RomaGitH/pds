function [xi,yi] = sobremuestra(ti, tf, fm, fs, phs)
  tm = 1/fm;
  t = ti:tm:tf-tm;
  x=2*pi*fs*t + phs;
  y=sin(x);

  t4 = tm/4;
  tx = ti:t4:tf-t4;
  #tm2 = linspace(ti,tf,40);
  xi=2*pi*fs*tx + phs;

  yi = zeros(40,1);
   n = 1;

  for i=1:40

    r = mod(i-1,4);
    if (r == 0 && i-1 != 0)
      n = n+1;
    endif

    #yi(i) = y(n)*lineal((tx(i)-t(n))/tm);

    j = 1;
    n
    for j=1:n
      yi(i) = yi(i) + y(j)*escalon((tx(i)-t(j))/tm);
      (tx(i)-t(j))/tm
      escalon((tx(i)-t(j))/tm)
    endfor
    #yi(i) = y(n)*sinc(ti,tf,f4,fs,phs)(i);


endfor
endfunction


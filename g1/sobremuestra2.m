#Interpolación lineal

function [xi,yi] = sobremuestra2(ti, tf, fm, fs, phs)
  tm = 1/fm;
  t = ti:tm:tf; #agrego un n
  x=2*pi*fs*t + phs;
  y=sin(x);

  t4 = tm/4;
  tx = ti:t4:tf-t4;
  xi=2*pi*fs*tx + phs;
  yi = zeros(40,1);

for n=1:11
    for i=1:40

     yi(i) = yi(i) + y(n)*lineal((tx(i)-t(n))/tm);

   endfor
  endfor

# for i=1:40

   # r = mod(i-1,4);
 #   if (r == 0 && i-1 != 0)
  #    n = n+1;
   # endif

    #yi(i) = y(n)*lineal((tx(i)-t(n))/tm) + y(n+1)*lineal((tx(i)-t(n+1))/tm);
    #j = 1;

    #for j=1:n
     # yi(i) = yi(i) + y(j)*lineal((tx(i)-t(j))/tm);
    #endfor
    #yi(i) = y(n)*sinc(ti,tf,f4,fs,phs)(i);


#endfor
endfunction


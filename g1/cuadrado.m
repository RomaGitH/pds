function [x,y] = cuadrado(ti,tf,fm,fs,phs)
  tm = 1/fm;
  t = ti:tm:tf-tm;
  x=2*pi*fs*t+phs;
  y=-1*(mod(x,2*pi) >= pi) .+ (mod(x,2*pi) < pi);
endfunction

function [t,y] = rampa(ti, tf, fm, a)
  tm = 1/fm;
  t = ti:tm:tf-tm;
  x=t;
  y=a*x;
  endfunction

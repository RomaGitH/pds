function [x,y] = inversion(ti, tf, fm, fs, phs)
  tm = 1/fm;
  t = ti:tm:tf-tm;
  x=2*pi*fs*t + phs;
  y=sin(x);

  t = ti:-tm:ti-tf+tm;
  x=2*pi*fs*t + phs;
endfunction


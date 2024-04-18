function [x,y] = cuantificacion(ti, tf, fm, fs, phs, N)
  tm = 1/fm;
  t = ti:tm:tf-tm;
  x=2*pi*fs*t + phs;
  y=sin(x) + 1;

  H=2/N;
  y=0*(x<0) + H * floor(y/H) .* (y >= 0) .* (y < (N-1) * H) + (N-1) * H * (y>=(N-1)*H) - 1;
endfunction


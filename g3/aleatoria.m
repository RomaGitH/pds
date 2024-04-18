function [t,y] = aleatoria(ti, tf, fm, r)
  t = ti: 1/fm: tf-1/fm;
  n = length(t);
  y = randn(n,r)'; #r realizaciones

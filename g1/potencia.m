function [y] = potencia(x)

  N = length(x);
  y = 0;
  for i=1:N
    y += x(i)^2;
  endfor

  y = y/(2*N);
  endfunction

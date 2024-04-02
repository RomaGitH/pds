function [y] = lineal(t)
  y = (abs(t)<1) .* (1-abs(t)) + (abs(t)>=1) .* 0;
endfunction

function [y] = escalon(x)
   x = x + 0.01; # xd
   y = ( x >= 0 & x < 1 & x ~= 1) * 1;

  endfunction

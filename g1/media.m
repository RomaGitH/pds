function [y] = media(x);
  [n,r] = size(x);
  y = zeros(n,1);

  for i=1:n
      for k=1:r
        y(i) = y(i) + x(i,k);
        endfor
     y(i) = y(i)/r;
  endfor



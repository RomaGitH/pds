function [w] = varianza(x,y);
  [n,r] = size(x);
  w = zeros(n,1);

  for i=1:n
      for k=1:r
        w(i) = w(i) + (x(i,k)-y(i))^2;
        endfor
      w(i) = w(i)/(r-1);
  endfor
  endfunction


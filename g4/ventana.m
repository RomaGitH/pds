function y  = ventana(t,p1,p2,A)
  y= 0.*t;

##  y(1:end) = 1;
  y(p1:p2) = A;

  endfunction

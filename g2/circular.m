function [y] = circular(x,h)
  N = length(x);
  y = zeros(1,length(h));
  h = [h, zeros(1, length(x)-length(h))];


  for i=1:length(y)
    for j=1:N;
      y(i) += h(j)*x(mod((N+i-j),N) + 1);

      #disp(['x = ',num2str(mod((N+i-j),N) + 1)]);
##      disp([' y( ', num2str(i) ,') += ', num2str(h(j)),' * ',num2str(x(mod((N+j-i),N) + 1)),
##      ' = ',num2str(y(i))]);

    endfor
  endfor

  endfunction

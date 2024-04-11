# h[n] = (a1 *    y[n-1] + a2 * y[n-2] + a3 * y[n-3] + .. + an * y[n-n] +
#       ... + b0 * x[n] + b1 * x[n-1] + .. + bn * x[n-n] ) / a0

# h[0] = (b0/a0)
# h[1] = (a1 * y[0] + b1)/a0
# h[1] = (a1 * b0/a0 + b1)/a0
# h[2] = (b0 + /a0)

function [h] = impulso(A, B, n)
  h(1:n)=zeros(1,n);
  A=[ A,zeros(1,n-length(A)) ];
  B=[ B,zeros(1,n-length(B)) ];

  if ( A(1) != 0)
    for (i=1:n)
     h(i) = B(i) / A(1);
     if (i>=2)
       h(i) += ( A(2:i) * h(i-1:-1:1)'  ) / A(1);
     endif
  endfor
  else
    n = n+1;
    for (i=1:n)
      for (j=1:i-1)
        h(i-1) += A(i-j)*B(j);
        disp([' h(', num2str(i-1),') += A(', num2str(i-j), ') * B(', num2str(j), ')']);
        disp([num2str(h(i-1)),' += ', num2str(A(i-j)), ' * ', num2str(B(j))]);
      endfor
    endfor

  endif

endfunction

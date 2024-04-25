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

  for (i=1:n)
    h(i) = B(i) / A(1);
      if (i>=2)
       h(i) += ( A(2:i) * h(i-1:-1:1)'  ) / A(1);
     endif
  endfor

endfunction

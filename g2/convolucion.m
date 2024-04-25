function h = convolucion(A,B)
    n =length(A) + length(B) - 1;
    h(1:n)=zeros(1,n);
    A=[ A,zeros(1,n-length(A)) ];
    B=[ B,zeros(1,n-length(B)) ];

##    n = n;
    for (i=1:n)
      for (j=1:i)


        h(i) += A(i-j+1)*B(j);

##        disp([' h(', num2str(i-1),') += A(', num2str(i-j), ') * B(', num2str(j), ')']);
##        disp([num2str(h(i-1)),' += ', num2str(A(i-j)), ' * ', num2str(B(j))]);
      endfor
    endfor


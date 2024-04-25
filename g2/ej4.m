
##y[n]- y[n-2] = x[n]

##n=5;
##A=[1,0,1];
##B=[1,0,0];
##x =[1 0 0];

##y[n] = x[n] +0. 5x[n-1]
##
##n=5;
##A=[1,0,0];
##B=[1,0.5,0];
##x =[1 0.5 0];

##y[n] - 0.5y[n-1] + 0.25y[n-2] = x[n]

n=5;
A=[1,0.5,-0.25];
B=[1,0,0];
x =[1 0 0];

g1 = conv(A,B);
g2 = convolucion(A,B);
g3 = filter(A,B,x);
g4 = impulso(A,B,n);

figure(1);
subplot(2,2,1);
stem(0:length(g1)-1,g1);
title('conv(A,B)');
subplot(2,2,2);
stem(0:length(g2)-1,g2);
title('convolucion(A,B)');
subplot(2,2,3);
stem(0:length(g3)-1,g3);
title('filter(A,B,x)');
subplot(2,2,4);
stem(0:length(g4)-1,g4);
title('impulso(A,B,n)');



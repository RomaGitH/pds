n=10;
A = [1, 0.7];
B = [1, 0];

figure(1);

h=impulso(A,B,n);
h
stem(0:n-1,h);

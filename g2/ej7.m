# a = 2;
x = [1 -2 4];

N = 5;
ha = sin(8*0:N-1)
#hb = 2^0:N-1
#ha = 2^0:N-1

w = impulso(ha,x,N)
figure(1);
stem(0:N-1, w);

# a = 2;
x = [1 -2];

N = 20;
ha = sin(8*0:N-1);
#ha = 2^0:N-1

w = impulso(ha,x,N);

hb = 0.5^0:N-1;

y = impulso(hb, w, N);

figure(1);
stem(0:N-1, y);
title('Sistema original');

#inversion;

y = impulso(hb,x,N);

w = impulso(ha,y,N);


figure(2);
stem(0:N-1, w);
title('Sistema invertido');

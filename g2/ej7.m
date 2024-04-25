# a = 2;
x = [1 -2];

N = 20;
ha = sin(8*0:N-1);
#ha = 2^0:N-1

w = convolucion(ha,x);

hb = 0.5^0:N-1;

y = convolucion(hb, w);

figure(1);
stem(0:length(y)-1, y);
title('Sistema original');

#inversion;

y = convolucion(hb,x);

w = convolucion(ha,y);


figure(2);
stem(0:length(w)-1, w);
title('Sistema invertido');

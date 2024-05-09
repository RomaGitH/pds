pkg load signal;
b = [1 -2 2 -1];
a = [1 -0.7 0.8 -0.1];
figure(1);
zplane(b,a);
roots(b)

##w = 0:0.01:2*pi-0.01;
##wi =  exp(w*1i);
##Hz = (polyval(b,wi).*(wi.^-3))./(polyval(a,wi).*(wi.^-3));
##figure(2);
##stem(w,Hz);

figure(3);
i = conv(a(2:end),[b 0]); #respuesta al impulso...
stem(0:length(i)-1,i);

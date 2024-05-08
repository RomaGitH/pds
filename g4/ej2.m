fm = 100;
ti = 0;
tf = 2.2;
phs = 0;

[t,seno4] = seno(ti, tf, fm, 4, phs);
[~,seno2] =seno(ti, tf, fm, 2, phs);
[~,cuadrada] = cuadrado(ti, tf, fm, 2, phs);

disp(['seno2hz*seno4hz = ',num2str(seno2*seno4')]);
disp(['seno2hz*cuadrada2hz = ',num2str(seno2*cuadrada')]);
disp(['seno4hz*cuadrada2hz = ',num2str(seno4*cuadrada')]);

## S4[k]
S4 = abs(fft(seno4, length(seno4)));
df=fm/length(t);
k=-fm/2:df:fm/2;

## S2[k]
S2 = abs(fft(seno2, length(seno2)));

## C[k]
C = abs(fft(cuadrada, length(cuadrada)));


mitad = ceil(length(S4)/2 + 1);

figure(1)
subplot(3,1,1);

stem(k, [S4(mitad:end), S4(1:mitad)]);
title('Espectro de Magnitud seno de 4 hz');
ylabel('|B|');
xlabel('f');
subplot(3,1,2);
stem(k, [S2(mitad:end), S2(1:mitad)] );
title('Espectro de Magnitud seno de 2 hz');
ylabel('|A|');
xlabel('f');
subplot(3,1,3);
stem(k, [C(mitad:end), C(1:mitad)] );
title('Espectro de Magnitud cuadrada de 2 hz');
ylabel('|C|');
xlabel('f');

disp(['seno2hz*seno4hz = ',num2str(S2*conj(S4)')]);
disp(['seno2hz*cuadrada2hz = ',num2str(S2*conj(C)')]);
disp(['seno4hz*cuadrada2hz = ',num2str(S4*conj(C)')]);




#3)...
[~,seno3punto5] =seno(ti, tf, fm, 3.5, phs);


# S3[k]
S3 = abs(fft(seno3punto5, length(seno3punto5)));

disp(['seno2hz*seno3.5hz = ',num2str(seno2*seno3punto5')]); #
disp(['seno2hz*seno3.5hz = ',num2str(S2*conj(S3)')]);

figure(2)
subplot(2,1,1);
stem(k, [S4(mitad:end), S4(1:mitad)]);
title('Espectro de Magnitud seno de 2 hz');
ylabel('|S2|');
xlabel('f');
subplot(2,1,2);
stem(k, [S3(mitad:end), S3(1:mitad)]);
title('Espectro de Magnitud seno de 3.5 hz');
ylabel('|S3|');
xlabel('f');




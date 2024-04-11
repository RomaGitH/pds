ti = 0;
tf = 2;
fm = 40;
fs = 1;
phs = 0;

[x1, y1]  =  seno(ti, tf, fm, fs, phs);
[x2, y2] = aleatoria(ti, tf, fm, 1);

y  = y1 + y2';

figure(1);
hold on;
stem(x1,y1,'g');
stem(x1,y2, 'y');
stem(x1,y,'r');

ylabel('y');
xlabel('x');
legend('señal','ruido','resultado');
hold off;

ps = potencia(y1);
pr = potencia(y2);
disp(['Potencia señal original Ps =', num2str(ps)]);
disp(['Potencia señal de ruido aleatorio Pr =', num2str(pr)]);
SNR = ps/pr;
disp(['Relacion Señal Ruido SNR =', num2str(SNR)]);


y2 = y2.*0.5;
pr = potencia (y2);
disp(['Potencia señal de ruido multiplicada por 0.5 Pr =', num2str(pr)]);

SNR = ps/pr;
disp(['Relacion Señal Ruido SNR =', num2str(SNR)]);

#por def de potencia si pot(y) = pr
#                       pot(cy) = c^2 pr
#                       -> si SNR = ps/pr
#                             SNR/c^2 = ps/(pr * c^2)
#                             si c = sqrt(SNR)
#                             -> ps/(pr * SNR) = 1 -> 10*log(1) db= 0db
#

c = sqrt(SNR);
y2 = y2.*c;
pr = potencia (y2);

disp(['Constante c =', num2str(c)]);
disp(['Potencia señal de ruido multiplicada por c Pr =', num2str(pr)]);
SNR = ps/pr;
disp(['Relacion Señal Ruido SNR =', num2str(SNR)]);
db = 10 * log(SNR);
disp(['Relacion Señal Ruido SNR en decibeles =', num2str(db), 'db']);

ti = 0;
tf = 2;
fm = 40;
fs = 2;
phi = 0;
a = 5;

#Señal

figure(1);
#[x,y] = rampa(0,2,40,5);
[x,y] = aleatoria(ti,tf,fm,1);
stem(x,y);

#valor medio

med = media(y);
disp(['Valor medio = ', num2str(med)]);

#máximo

maximo = max(y);
disp(['Maximo = ', num2str(maximo)]);

#mínimo

minimo = min(y);
disp(['Minimo = ', num2str(minimo)]);

#amplitud

A = max(y);
disp(['Amplitud = ', num2str(A)]);

#energía

E = normp(y,2);
E = E^2;
disp(['Energia = ', num2str(A)]);

#acción,

a = normp(y,1);
disp(['Accion = ', num2str(a)]);

#potencia media

pot = potencia(y);
disp(['Potencia Media= ', num2str(pot)]);

#raíz del valor cuadrático medio.

disp(['RMS = ', num2str(sqrt(pot))]);



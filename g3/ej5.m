#Carga de la señal;
s=load('te.txt');

#funcion para generar las matrices de senoidales que varian de fase;
function X = senoidales(fs,n)
  X = zeros(64,n); #el periodo de fase se divide en 64
  for i=1:64
     [~,X(i,:)] = seno(0, n*1/11025, 11025, fs,(i-1)*pi/64);
  endfor
endfunction

# Extraccion de los distintos numeros

n1 = s(17600:21099);
n2 = s(30500:33999);
n3 = s(39600:43099);
n4 = s(48750:52249);
n5 = s(59550:63049);
n6 = s(70250:73749);
n7 = s(81050:84549);

n = length(n1); # 3500 muestras por señal

# Las marices se corresponden a las posiciones en el pad
#    V1 V2 V3
# H1
# H2
# H3
# H4

V1 = senoidales(1209,n);
V2 = senoidales(1336,n);
V3 = senoidales(1477,n);
H1 = senoidales(697,n);
H2 = senoidales(770,n);
H3 = senoidales(852,n);
H4 = senoidales(941,n);

#Se concatena los numeros obtenidos con la funcion num
Numero = [num(n1,V1,V2,V3,H1,H2,H3,H4),num(n2,V1,V2,V3,H1,H2,H3,H4),num(n3,V1,V2,V3,H1,H2,H3,H4),num(n4,V1,V2,V3,H1,H2,H3,H4),num(n5,V1,V2,V3,H1,H2,H3,H4),num(n6,V1,V2,V3,H1,H2,H3,H4),num(n7,V1,V2,V3,H1,H2,H3,H4)];
display(['el numero marcado es ', Numero]);


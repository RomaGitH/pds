ti = 0;
tf = 5;
fm = 5;


#Estacionariedad
%{
for i=1:5
  [x, y] = aleatoria(ti, tf, fm, 50*i);
  subplot(3,5,i);
  plot(x,y);
  subplot(3,5,i+5);
  w = media(y);
  plot(x,w);

  subplot(3,5,i+10);
  z = varianza(y,w);
  plot(x,z);
endfor
%}

ti = 0;
tf = 200;
fm = 5;
#Ergocidad

xi = zeros(10,1);
media = zeros(10,1);

for i=1:10
  [x, y] = aleatoria(ti, i*tf, fm, 1);
  xi(i) = i*tf;
  media(i) = sum(y)/length(y);
endfor
plot(xi,media);
%{
figure(2);
w = mediaergo(y);
plot(x,w);
%}


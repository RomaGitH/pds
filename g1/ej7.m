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
for i=1:5
  [x, y] = aleatoria(ti, i*tf, fm, 1);
  subplot(3,5,i);
  plot(x,y);
  subplot(3,5,i+5);
  media = sum(y)/length(y)
  plot(x,media);
endfor

%{
figure(2);
w = mediaergo(y);
plot(x,w);
%}


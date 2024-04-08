ti = 0;
tf = 2;
fm = 5;


#Estacionariedad

for i=1:5
  [x, y] = aleatoria(ti, tf, fm, 15*i*i);
  subplot(3,5,i);
  plot(x,y);
  title([num2str(15*i*i),' realizaciones'])

  subplot(3,5,i+5);
  w = media(y);
  plot(x,w);
  title('Media');

  subplot(3,5,i+10);
  z = varianza(y,w);
  plot(x,z);
  title('Varianza');
endfor





#Ergocidad

for j=1:5
  [x, y] = aleatoria(ti, 15*j*j*j, fm, 1);
  m = sum(y)/length(y);
  v = sum((y-m).^2)/length(y);
  disp(['Para t =', num2str(15*j*j), 's media =', num2str(m),
   ' y varianza =', num2str(v)]);

endfor



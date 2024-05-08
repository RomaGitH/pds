ti = 0;
tf = 1;
fm = 100;

t  = ti:1/fm:tf-1/fm;
for i =1:80
  p1 = i;
  p2 = 80;
  A = 1;

  y = ventana(t,p1,p2,A);

  [~,z] = seno(ti,tf,fm,2,0);

  y = y.*abs(z);
  Y = abs(fft(y,length(y)));

  df=fm/length(t);

  k=-fm/2:df:fm/2;
  mitad = length(Y)/2-1;

  subplot(1,2,1);
  stem(t,y);
  subplot(1,2,2);
  stem(k,[Y(mitad:end),Y(1:mitad)]);
  pause(0.003);
  endfor

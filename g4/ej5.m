ti  = 0;
tf = 1;
fm  = 50;
fs = 0;

##
## Test
##for i=0:50
##  [t,z] = seno(ti,tf,fm,fs,0);
####  z *= 10;
##  Y = abs(fft(z,length(z)));
##
##  df=fm/length(t);
##  k = df:df:fm;
##
##  stem(k,Y);
##  title(['fs = ', num2str(i), ' hz, fm = 50hz']);
##  fs += 1;
##  pause(0.1);
##
##  endfor

  df=fm/length(t);
  k = df:df:fm;
## Ec... sin(2pi*abs(fm-fs)*t)...
fs = 0;
for i=0:50
  [t,y1] = seno(ti,tf,fm,fs,0);
  [~,y2] = seno(ti,tf,fm,abs(fm-fs),0);


  Y = abs(fft(1/2.*y1,length(y1))) + abs(fft(1/2.*y2,length(y2)));

  subplot(3,1,1)
  stem(t,y1);
  title('y1[n] = sin(2pi*fs*t)');
  subplot(3,1,2)
  stem(t,y2);
  title('y2[n] = sin(2pi*abs(fm-fs)*t)');
  subplot(3,1,3);

  stem(k,Y);
  title('F(y1[n]+y2[n]) = Y1[k] + Y2[k]');


  fs += 1;
  pause(0.1)

  endfor

fs=5;
ti=0;tf=1;
fm=[100,25,10,4,1,0.5];

for i=1:6
  figure(i)
  [x,y]=seno(ti,tf,fm(i),fs,0);
  plot(x,y);
  title(['fs = 5 hz, fm = ', num2str(fm(i)), ' hz']);
endfor

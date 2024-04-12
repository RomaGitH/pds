fs=5;
ti=0;tf=1;
fm=[100,25,10,4,1,0.5];

for i=1:6
  subplot(6,1,i)
  [x,y]=seno(ti,tf,fm(i),fs,0);
  stem(x,y);
  title(['fs = 5 hz, fm = ', num2str(fm(i)), ' hz']);
endfor

#Si variacion != 1 -> la fase varía
function y = conjunto(cant,ti, tf, fm, phs, A, variacion)
  y = zeros(10,fm);
  for i=1:cant
    [x1,y1] = seno(ti,tf,fm,i,phs*(variacion+1)/i);
    y(i,:) = A.*y1;
  endfor
  endfunction


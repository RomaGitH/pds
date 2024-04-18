function [t,xi] = interpolar(x, ti, tf, tmi, tmf, n, m, interpolador)
  t=ti:tmi:tf-tmi;
  for i=0:m-1
    interpolador( (-t .+ i*tmf) ./ tmi )
    xi(i+1)=x*arrayfun(interpolador,( (-t .+ i*tmf) ./ tmi ))';
  endfor
  t=ti:tmf:tf-tmf;
endfunction
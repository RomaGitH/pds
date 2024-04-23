[y,fm] = audioread('escala.wav');
t = 0: 1/fm: (length(y)/fm) - 1/fm;
##plot(t,y);

function X = senoidales(fm,fs,n)
  X = zeros(64,n); #el periodo de fase se divide en 64
  for i=1:64
     [~,X(i,:)] = seno(0, n*1/fm, fm, fs,(i-1)*pi/64);
  endfor
endfunction

n =5513; # n = floor(yn/8)
La = senoidales(fm, 440, n);

for i=1:8
    P(i)=  max(La*y(((i-1)*n)+1:i*n));

endfor

[~,pos] = max(P);
display(['El La esta en la posicion :', num2str(pos)]);



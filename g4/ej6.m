y = load('necg.txt');
fm = 360;
t= 0:1/fm:(length(y)/fm) - 1/fm;

df = fm/length(t);

k = -fm/2:df:fm/2;
W = abs(fft(y,length(y)));

mitad = ceil(length(W)/2 + 1)

subplot(2,1,1);
stem(t, y);
subplot(2,1,2);
##length(k)
##length(W(mitad:end))
##length(W(1:mitad-1))
##length([W(mitad:end) W(1:mitad-1)])
##length(W)
stem(k,[W(mitad:end) W(1:mitad-1)]);

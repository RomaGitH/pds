#x = [1,0,2,2];
#h = [2, 1, 0.5,0];

x = [1,0,1,0];
h = [1, 0.5,1];
y  = circular (x,h);



figure(3);
stem(0:length(y) -1, y);

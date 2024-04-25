#x = [1,0,2,2];
#h = [2, 1, 0.5,0];
##
##x = [1,0,1,0];
##h = [1, 0.5,1];

x = [1 2 3 4];
h = [1 2 3 4] ;
w = conv(x,h);
y  = circular (x,h);
z = cconv(x,h,length(h));



subplot(3,1,1)
stem(0:length(y) -1, y);
subplot(3,1,2)
stem(0:length(z) -1,z);
subplot(3,1,3)
stem(0:length(w) -1,w);

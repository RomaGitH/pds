n=10;
A=[1,1/2,-1/4];
B=[1,0,0];

figure(1);

hold on;
h=impulso(A,B,n);
[t,y2]=sinc(0,1,40,1,0);
stem(t,y2);

stem(0:n-1,h);

hold off;
figure(2);


[t,y2]=seno(0,1,40,1,0);
subplot(3,1,1);
stem(t,y2);



[t,y1]=sinc(0,1,40,1,0);
subplot(3,1,2);
stem(t,y1);

subplot(3,1,3);
stem(t,conv(y1,y2,"same"));

ti=0;
tf=1;
fm=10;
fs=2;
phs=0;
[t,y]=seno(ti,tf,fm,fs,phs);

function yi=sinc(x)
 if  (x==0) 
   yi=1
 else
   yi=sin(pi*x)/x;
 endif
endfunction

function yi=lineal(x)
  if (abs(x) < 1)
    yi=1-abs(x);  
  else
    yi=0;
  endif
endfunction

function yi=escalon(x)
  if (0<=x && x<1) 
    yi=1;
  else
    yi=0;
  endif
endfunction

fn=fm*4;
[tint,yint]=interpolar(y, ti, tf, 1/fm, 1/fn, fm*(tf-ti), fn*(tf-ti), @lineal );
                 
subplot(2,1,1);
stem(t,y);
title("f. de muestreo = 10");
xlabel("t=n*tmi");
ylabel("y[n]");

subplot(2,1,2);
stem(tint,yint);
title("f. de muestreo = 40 (interpolada)");
xlabel("tint=n*tmf");
ylabel("yint[n]");



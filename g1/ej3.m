A = 3; #m
Tm = 0.00125; #s
fs = 20.51; #hz
phi = -2*pi*fs*0.00125*5; #phi = -2pi*fs*t1, t1 = 5*Tm #rad

t=0:Tm:0.1-Tm;

x = 2*pi*fs*t+phi;
y = A*sin(x);
plot(t,y);

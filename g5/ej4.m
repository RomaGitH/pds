Hs = @(s) (12500.*s)./(44.*(s.^2)+(60625.*s)+6250000);

Hz1 = @(z,T) Hs((1-z.^-1)/T); #euler
Hz2 = @(z,T) Hs((2/T).*((1-z.^-1)./(1 + z.^-1))); #bilineal

w = 0:50:10000;
H = abs(Hs(w*1i));
subplot(3,1,1);
stem(w,H);

[m, maxp] = max(H);

target =  m * exp(-3/10);
s = length(H);
f0 = 0;
for i=maxp:s
    if(H(i)<target)
        f0 = w(i)/(2*pi)
      break;
    endif
endfor

fT = 4*f0;
wz = 0:0.01:pi;
K1 = abs(Hz1(wz.*1i,48/fT)); #...
subplot(3,1,2);
stem(wz,K1);
K2 = abs(Hz2(wz.*1i,1/fT)); #...
subplot(3,1,3);
stem(wz,K2);


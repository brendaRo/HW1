clear all;
clc;


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Inciso b)%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%% HAAR TRANSFORM & HAAR INVERSE TRANSFORM %%%%%

N=1024;
x=1:1:N;
f=2*x.^2-3*x+1;
% plot(x,f)

for i=1:1:N/2
    a(1,i)=(f(2*i-1)+f(2*i))/sqrt(2);
    d(1,i)=(f(2*i-1)-f(2*i))/sqrt(2);
end

for j=2:1:10
    for i=1:1:N/(2^j)
        a(j,i)=(a(j-1,2*i-1)+a(j-1,2*i))/sqrt(2);
        d(j,i)=(a(j-1,2*i-1)-a(j-1,2*i))/sqrt(2);
    end
end

b(1:10,1:N/2)=0;
b(10,1)=a(10,1);

for j=10:-1:2
    for i=1:1:N/(2^j)
        b(j-1,2*i-1)=(b(j,i)+d(j,i))/sqrt(2);
        b(j-1,2*i)=(b(j,i)-d(j,i))/sqrt(2);
    end
end

for i=1:1:N/2
    fr(2*i-1)=(b(1,i)+d(1,i))/sqrt(2);
    fr(2*i)=(b(1,i)-d(1,i))/sqrt(2);
end

figure(1)
subplot(2,1,1)
plot(x,f)
title('Original')
subplot(2,1,2)
plot(x,fr)
title('Reconstruida')

figure(2)
subplot(4,3,1)
plot(x(1,1:512),a(1,1:512))
title('1-Lvl Dec.')
subplot(4,3,2)
plot(x(1,1:512),a(2,1:512))
title('2-Lvl Dec.')
subplot(4,3,3)
plot(x(1,1:512),a(3,1:512))
title('3-Lvl Dec.')
subplot(4,3,4)
plot(x(1,1:512),a(4,1:512))
title('4-Lvl Dec.')
subplot(4,3,5)
plot(x(1,1:512),a(5,1:512))
title('5-Lvl Dec.')
subplot(4,3,6)
plot(x(1,1:512),a(6,1:512))
title('6-Lvl Dec.')
subplot(4,3,7)
plot(x(1,1:512),a(7,1:512))
title('7-Lvl Dec.')
subplot(4,3,8)
plot(x(1,1:512),a(8,1:512))
title('8-Lvl Dec.')
subplot(4,3,9)
plot(x(1,1:512),a(9,1:512))
title('9-Lvl Dec.')
subplot(4,3,10)
plot(x(1,1:512),a(10,1:512))
title('10-Lvl Dec.')

figure(3)
subplot(4,3,1)
plot(x(1,1:N/2),a(1,1:N/2))
title('1-Lvl Dec.')
subplot(4,3,2)
plot(x(1,1:N/4),a(2,1:N/4))
title('2-Lvl Dec.')
subplot(4,3,3)
plot(x(1,1:N/8),a(3,1:N/8))
title('3-Lvl Dec.')
subplot(4,3,4)
plot(x(1,1:N/16),a(4,1:N/16))
title('4-Lvl Dec.')
subplot(4,3,5)
plot(x(1,1:N/32),a(5,1:N/32))
title('5-Lvl Dec.')
subplot(4,3,6)
plot(x(1,1:N/64),a(6,1:N/64),'-o')
title('6-Lvl Dec.')
subplot(4,3,7)
plot(x(1,1:N/128),a(7,1:N/128),'-o')
title('7-Lvl Dec.')
subplot(4,3,8)
plot(x(1,1:N/256),a(8,1:N/256),'-o')
title('8-Lvl Dec.')
subplot(4,3,9)
plot(x(1,1:N/512),a(9,1:N/512),'-o')
title('9-Lvl Dec.')
subplot(4,3,10)
plot(x(1,1:N/1024),a(10,1:N/1024),'-o')
title('10-Lvl Dec.')

figure(4)
subplot(4,3,1)
stairs(x(1,1:512),a(1,1:512))
title('1-Lvl Dec.')
subplot(4,3,2)
stairs(x(1,1:512),a(2,1:512))
title('2-Lvl Dec.')
subplot(4,3,3)
stairs(x(1,1:512),a(3,1:512))
title('3-Lvl Dec.')
subplot(4,3,4)
stairs(x(1,1:512),a(4,1:512))
title('4-Lvl Dec.')
subplot(4,3,5)
stairs(x(1,1:512),a(5,1:512))
title('5-Lvl Dec.')
subplot(4,3,6)
stairs(x(1,1:512),a(6,1:512))
title('6-Lvl Dec.')
subplot(4,3,7)
stairs(x(1,1:512),a(7,1:512))
title('7-Lvl Dec.')
subplot(4,3,8)
stairs(x(1,1:512),a(8,1:512))
title('8-Lvl Dec.')
subplot(4,3,9)
stairs(x(1,1:512),a(9,1:512))
title('9-Lvl Dec.')
subplot(4,3,10)
stairs(x(1,1:512),a(10,1:512))
title('10-Lvl Dec.')

figure(5)
subplot(4,3,1)
stairs(x(1,1:N/2),a(1,1:N/2))
title('a:1-Lvl Dec.')
subplot(4,3,2)
stairs(x(1,1:N/4),a(2,1:N/4))
title('a:2-Lvl Dec.')
subplot(4,3,3)
stairs(x(1,1:N/8),a(3,1:N/8))
title('a:3-Lvl Dec.')
subplot(4,3,4)
stairs(x(1,1:N/16),a(4,1:N/16))
title('a:4-Lvl Dec.')
subplot(4,3,5)
stairs(x(1,1:N/32),a(5,1:N/32))
title('a:5-Lvl Dec.')
subplot(4,3,6)
stairs(x(1,1:N/64),a(6,1:N/64))
title('a:6-Lvl Dec.')
subplot(4,3,7)
stairs(x(1,1:N/128),a(7,1:N/128))
title('a:7-Lvl Dec.')
subplot(4,3,8)
stairs(x(1,1:N/256),a(8,1:N/256))
title('a:8-Lvl Dec.')
subplot(4,3,9)
stairs(x(1,1:N/512),a(9,1:N/512))
title('a:9-Lvl Dec.')
subplot(4,3,10)
stairs(x(1,N/1024),a(10,N/1024),'-o')
title('a:10-Lvl Dec.')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Inciso c)%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%% ENERGY %%%%%

E=0;
for i=1:1:N
    E=E+f(1,i)^2;  
end

Ea1=0;
Ed1=0;
for i=1:1:N/2
    Ea1=Ea1+a(1,i)^2;
    Ed1=Ed1+d(1,i)^2;
    Eca1(1,i)=a(1,i)^2;
    Ecd1(1,i)=d(1,i)^2;
end
E1=Ea1+Ed1;

Ea2=0;
Ed2=0;
for i=1:1:N/4
    Ea2=Ea2+a(2,i)^2;
    Ed2=Ed2+d(2,i)^2;
end
E2=Ea2+Ed2+Ed1;

Ea3=0;
Ed3=0;
for i=1:1:N/8
    Ea3=Ea3+a(3,i)^2;
    Ed3=Ed3+d(3,i)^2;
end
E3=Ea3+Ed3+Ed2+Ed1;

Ea4=0;
Ed4=0;
for i=1:1:N/16
    Ea4=Ea4+a(4,i)^2;
    Ed4=Ed4+d(4,i)^2;
end
E4=Ea4+Ed4+Ed3+Ed2+Ed1;

Ea5=0;
Ed5=0;
for i=1:1:N/32
    Ea5=Ea5+a(5,i)^2;
    Ed5=Ed5+d(5,i)^2;
end
E5=Ea5+Ed5+Ed4+Ed3+Ed2+Ed1;

Ea6=0;
Ed6=0;
for i=1:1:N/64
    Ea6=Ea6+a(6,i)^2;
    Ed6=Ed6+d(6,i)^2;
end
E6=Ea6+Ed6+Ed5+Ed4+Ed3+Ed2+Ed1;

Ea7=0;
Ed7=0;
for i=1:1:N/128
    Ea7=Ea7+a(7,i)^2;
    Ed7=Ed7+d(7,i)^2;
end
E7=Ea7+Ed7+Ed6+Ed5+Ed4+Ed3+Ed2+Ed1;

Ea8=0;
Ed8=0;
for i=1:1:N/256
    Ea8=Ea8+a(8,i)^2;
    Ed8=Ed8+d(8,i)^2;
end
E8=Ea8+Ed8+Ed7+Ed6+Ed5+Ed4+Ed3+Ed2+Ed1;

Ea9=0;
Ed9=0;
for i=1:1:N/512
    Ea9=Ea9+a(9,i)^2;
    Ed9=Ed9+d(9,i)^2;
end
E9=Ea9+Ed9+Ed8+Ed7+Ed6+Ed5+Ed4+Ed3+Ed2+Ed1;

Ea10=0;
Ed10=0;
for i=1:1:N/1024
    Ea10=Ea10+a(10,i)^2;
    Ed10=Ed10+d(10,i)^2;
end
E10=Ea10+Ed10+Ed9+Ed8+Ed7+Ed6+Ed5+Ed4+Ed3+Ed2+Ed1;


Energy=[E,0,0,0,0,0,0,0,0,0,0,0;E1,Ea1,Ed1,0,0,0,0,0,0,0,0,0;E2,Ea2,Ed2,Ed1,0,0,0,0,0,0,0,0;E3,Ea3,Ed3,Ed2,Ed1,0,0,0,0,0,0,0;E4,Ea4,Ed4,Ed3,Ed2,Ed1,0,0,0,0,0,0;E5,Ea5,Ed5,Ed4,Ed3,Ed2,Ed1,0,0,0,0,0;E6,Ea6,Ed6,Ed5,Ed4,Ed3,Ed2,Ed1,0,0,0,0;E7,Ea7,Ed7,Ed6,Ed5,Ed4,Ed3,Ed2,Ed1,0,0,0;E8,Ea8,Ed8,Ed7,Ed6,Ed5,Ed4,Ed3,Ed2,Ed1,0,0;E9,Ea9,Ed9,Ed8,Ed7,Ed6,Ed5,Ed4,Ed3,Ed2,Ed1,0;E10,Ea10,Ed10,Ed9,Ed8,Ed7,Ed6,Ed5,Ed4,Ed3,Ed2,Ed1]




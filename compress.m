ca=0;
cd=0;
lim=7.86e+06;
for i=1:512
    if Eca1(1,i) > lim
        Ecaa1(1,i)=Eca1(1,i);
        ca=ca+1;
    else
        Ecaa1(1,i)=0;
    end
    if Ecd1(1,i) > lim
        Ecdd1(1,i)=Ecd1(1,i);
        cd=cd+1;
    else
        Ecdd1(1,i)=0;
    end
end
c=ca+cd


for i=1:1:N/2
    fc(2*i-1)=(Ecaa1(1,i)+Ecdd1(1,i))/sqrt(2);
    fc(2*i)=(Ecaa1(1,i)-Ecdd1(1,i))/sqrt(2);
end

figure()
subplot(2,1,1)
plot(1:1:1024,f)
title('Original')

subplot(2,1,2)
plot(1:1:1024,fc)
title('Comprimida')

Ect=0;
Cerror=0;
for i=1:512
    Ect=Ect+Ecaa1(1,i)+Ecdd1(1,i);
    Cerror=Cerror+(Ecd1(1,i)-Ecdd1(1,i))^2+(Eca1(1,i)-Ecaa1(1,i))^2;
    CC=Eca1(1,i)^2+Ecd1(1,i)^2;
end
Ect
Err=sqrt(Cerror/1024)
Terr=sqrt(CC)
porcErr=Err*100/Terr

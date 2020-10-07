clear all;
clc;

g0(1,1:1024)=0;
g0(1,1)=1/sqrt(2);
g0(1,2)=-1/sqrt(2);


Y = fft(g0);
L=1024;
Fs=1000;

P2 = abs(Y/L);
P1 = P2(1:L/2+1);
P1(2:end-1) = 2*P1(2:end-1);

f0 = Fs*(0:(L/2))/L;
plot(f0,P1)
title('Single-Sided Amplitude Spectrum of f(t)')
xlabel('f1 (Hz)')
ylabel('|P1(f)|')

hold on



g1(1,1:1024)=0;
g1(1,1)=1/2;
g1(1,2)=1/2;
g1(1,3)=-1/2;
g1(1,4)=-1/2;

Y = fft(g1);
L=1024;
Fs=1000;

P2 = abs(Y/L);
P1 = P2(1:L/2+1);
P1(2:end-1) = 2*P1(2:end-1);

f1 = Fs*(0:(L/2))/L;
plot(f1,P1)



g2(1,1:1024)=0;
a2=sqrt(8);
for i=1:4
    g2(1,i)=1/a2;
    g2(1,4+i)=-1/a2;
end

Y = fft(g2);
L=1024;
Fs=1000;

P2 = abs(Y/L);
P1 = P2(1:L/2+1);
P1(2:end-1) = 2*P1(2:end-1);

f2 = Fs*(0:(L/2))/L;

plot(f2,P1)


g3(1,1:1024)=0;
a3=sqrt(16);
for i=1:8
    g3(1,i)=1/a3;
    g3(1,8+i)=-1/a3;
end

Y = fft(g3);
L=1024;
Fs=1000;

P2 = abs(Y/L);
P1 = P2(1:L/2+1);
P1(2:end-1) = 2*P1(2:end-1);

f3 = Fs*(0:(L/2))/L;
plot(f3,P1)


g4(1,1:1024)=0;
a4=sqrt(32);
for i=1:16
    g4(1,i)=1/a4;
    g4(1,16+i)=-1/a4;
end

Y = fft(g4);
L=1024;
Fs=1000;

P2 = abs(Y/L);
P1 = P2(1:L/2+1);
P1(2:end-1) = 2*P1(2:end-1);

f4 = Fs*(0:(L/2))/L;
plot(f4,P1)


g5(1,1:1024)=0;
a5=sqrt(64);
for i=1:32
    g5(1,i)=1/a5;
    g5(1,32+i)=-1/a5;
end

Y = fft(g5);
L=1024;
Fs=1000;

P2 = abs(Y/L);
P1 = P2(1:L/2+1);
P1(2:end-1) = 2*P1(2:end-1);

f5 = Fs*(0:(L/2))/L;
plot(f5,P1)



g6(1,1:1024)=0;
a6=sqrt(128);
for i=1:64
    g6(1,i)=1/a6;
    g6(1,64+i)=-1/a6;
end

Y = fft(g6);
L=1024;
Fs=1000;

P2 = abs(Y/L);
P1 = P2(1:L/2+1);
P1(2:end-1) = 2*P1(2:end-1);

f6 = Fs*(0:(L/2))/L;
plot(f6,P1)



g7(1,1:1024)=0;
a7=sqrt(256);
for i=1:128
    g7(1,i)=1/a7;
    g7(1,128+i)=-1/a7;
end

Y = fft(g7);
L=1024;
Fs=1000;

P2 = abs(Y/L);
P1 = P2(1:L/2+1);
P1(2:end-1) = 2*P1(2:end-1);

f7 = Fs*(0:(L/2))/L;
plot(f7,P1)



g8(1,1:1024)=0;
a8=sqrt(512);
for i=1:256
    g8(1,i)=1/a8;
    g8(1,256+i)=-1/a8;
end

Y = fft(g8);
L=1024;
Fs=1000;

P2 = abs(Y/L);
P1 = P2(1:L/2+1);
P1(2:end-1) = 2*P1(2:end-1);

f8 = Fs*(0:(L/2))/L;
plot(f8,P1)



g9(1,1:1024)=0;
a9=sqrt(1024);
for i=1:512
    g9(1,i)=1/a9;
    g9(1,512+i)=-1/a9;
end

Y = fft(g9);
L=1024;
Fs=1000;

P2 = abs(Y/L);
P1 = P2(1:L/2+1);
P1(2:end-1) = 2*P1(2:end-1);

f9 = Fs*(0:(L/2))/L;
plot(f9,P1)


g10(1,1:1024)=0;
a10=sqrt(1024);
for i=1:1024
    g10(1,i)=1/a10;
end

Y = fft(g10);
L=1024;
Fs=1000;

P2 = abs(Y/L);
P1 = P2(1:L/2+1);
P1(2:end-1) = 2*P1(2:end-1);

f10 = Fs*(0:(L/2))/L;
plot(f10,P1)

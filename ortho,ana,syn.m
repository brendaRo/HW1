% Homework 1 Wavelets

clear all;
s = zeros(1024,1);
haar = [1/sqrt(2), 1/sqrt(2); 1/sqrt(2), -1/sqrt(2)];


%% function and signal samples
for i=1:1024
   s(i) = 2*(i-1)^2 - 3*(i-1) + 1; 
end
mraA = zeros(1024,11);  %approximations + signal
mraA(:,1)=s;
mraD = zeros(1024,10);  % details



%% a) orthogonality
ort = haar(1,1)*haar(2,1)+haar(1,2)*haar(2,2);

%% b) 10-level MRA transform and inverse
%approximations
for i=1:10
    for j=1:(1024/2^i)
        mraA(j,i+1) = (mraA(2*j-1,i)+mraA(2*j,i))/sqrt(2);
    end
    
end
%% details
for i=1:10
    for j=1:(1024/2^i)
        mraD(j,i) = (mraA(2*j-1,i)-mraA(2*j,i))/sqrt(2);
    end
    
end

for i=257:769
    mraD(i,2)= mraD(i-256,1);
end

for i=129:896
    mraD(i,3)= mraD(i-128,2);
end

for i=65:960
    mraD(i,4)= mraD(i-64,3);
end

for i=33:992
    mraD(i,5)= mraD(i-32,4);
end

for i=17:1008
    mraD(i,6)= mraD(i-16,5);
end

for i=9:1016
    mraD(i,7)= mraD(i-8,6);
end

for i=5:1020
    mraD(i,8)= mraD(i-4,7);
end

for i=3:1022
    mraD(i,9)= mraD(i-2,8);
end

for i=2:1023
    mraD(i,10)= mraD(i-1,9);
end
tiledlayout(4,3)

ax1 = nexttile;
plot(ax1,mraD(:,1))
title(ax1,'1-Lvl Desc.')

ax1 = nexttile;
plot(ax1,mraD(:,2))
title(ax1,'2-Lvl Desc.')

ax1 = nexttile;
plot(ax1,mraD(:,3))
title(ax1,'3-Lvl Desc.')

ax1 = nexttile;
plot(ax1,mraD(:,4))
title(ax1,'4-Lvl Desc.')

ax1 = nexttile;
plot(ax1,mraD(:,5))
title(ax1,'5-Lvl Desc.')

ax1 = nexttile;
plot(ax1,mraD(:,6))
title(ax1,'6-Lvl Desc.')

ax1 = nexttile;
plot(ax1,mraD(:,7))
title(ax1,'7-Lvl Desc.')

ax1 = nexttile;
plot(ax1,mraD(:,8))
title(ax1,'8-Lvl Desc.')

ax1 = nexttile;
plot(ax1,mraD(:,9))
title(ax1,'9-Lvl Desc.')

ax1 = nexttile;
plot(ax1,mraD(:,10))
title(ax1,'10-Lvl Desc.')

inv = zeros(1024,1);
for i = 0:511
    inv(2*i+1,1)= (mraA(i+1,2)+mraD(i+1,1))/sqrt(2);
    
end
for i = 1:512
    inv(2*i,1)= (mraA(i,2)-mraD(i,1))/sqrt(2);
end
%% c) energies (trends, fluctuations, total)
Es = 0; %Energy of the signal
Et = zeros(10,1);
Ef = zeros(10,1);
Ed = zeros(10,1);

for i = 1:1024
    Es= Es + s(i)^2;
end

for j = 2:11 %energy of trends
    for i = 1:1024
        Et(j-1,1) = Et(j-1,1) + mraA(i,j)^2;
    end
end

for j = 1:10 %energy of fluctuations
    for i = 1:1024
        Ef(j,1) = Ef(j,1) + mraD(i,j)^2;
    end
end

% Energy per level
for j = 1:10
    Ed(j,1) = Et(j) + Ef(j);
end

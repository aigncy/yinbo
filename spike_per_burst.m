% load mydata;
% %load btayn;
% 
% d1 = mydata(1,:);
% e1 = mydata(2,:);
% %I = btayn(3,:);
% %I = I';
dt = 0.0002;
I0 = mean(I);

sb10 = zeros(1,kkk);
sb20 = zeros(1,kkk);
sb30 = zeros(1,kkk);
sb40 = zeros(1,kkk);
sb50 = zeros(1,kkk);
sb60 = zeros(1,kkk);
sb70 = zeros(1,kkk);

sf10 = zeros(1,kkk);
sf20 = zeros(1,kkk);
sf30 = zeros(1,kkk);
sf40 = zeros(1,kkk);
sf50 = zeros(1,kkk);
sf60 = zeros(1,kkk);
sf70 = zeros(1,kkk);

kk1 = 1;
kk2 = 1;
kk3 = 1;
kk4 = 1;
kk5 = 1;
kk6 = 1;
kk7 = 1;

for i = 15:kkk-4
    if e1(1,i) == 1
        sb10(1,kk1) = d1(1,i);
        sf10(1,kk1) = d2(1,i);
        kk1 = kk1+1;
    elseif e1(1,i) == 2
        sb20(1,kk2) = d1(1,i);
        sf20(1,kk2) = d2(1,i);
        kk2 = kk2+1;
    elseif e1(1,i) == 3
        sb30(1,kk3) = d1(1,i);
        sf30(1,kk3) = d2(1,i);
        kk3 = kk3+1;
    elseif e1(1,i) == 4
        sb40(1,kk4) = d1(1,i);
        sf40(1,kk4) = d2(1,i);
        kk4 = kk4+1;
    elseif e1(1,i) == 5
        sb50(1,kk5) = d1(1,i);
        sf50(1,kk5) = d2(1,i);
        kk5 = kk5+1;
    elseif e1(1,i) == 6
        sb60(1,kk6) = d1(1,i);
        sf60(1,kk6) = d2(1,i);
        kk6 = kk6+1;
    elseif e1(1,i) == 7
        sb70(1,kk7) = d1(1,i);
        sf70(1,kk7) = d2(1,i);
        kk7 = kk7+1;
    end
end

%divide spikes

sb1 = sb10(1,1:kk1-1);
sb2 = sb20(1,1:kk2-1);
sb3 = sb30(1,1:kk3-1);
sb4 = sb40(1,1:kk4-1);
sb5 = sb50(1,1:kk5-1);
sb6 = sb60(1,1:kk6-1);
sb7 = sb70(1,1:kk7-1);

sf1 = sf10(1,1:kk1-1);
sf2 = sf20(1,1:kk2-1);
sf3 = sf30(1,1:kk3-1);
sf4 = sf40(1,1:kk4-1);
sf5 = sf50(1,1:kk5-1);
sf6 = sf60(1,1:kk6-1);
sf7 = sf70(1,1:kk7-1);

st = -2; %start
fi = 1;  %finish
tol = (-1)*st+fi;
mm = tol/dt+1;

x1 = zeros(mm,1);
for i=1:length(sb1)
    x1 = x1+I((sb1(1,i)+st/dt:sb1(1,i)+fi/dt),1);
end

x1=x1/length(sb1)-I0;

%bta

subplot(4,2,1);
plot(st:dt:fi,x1,'k');
xlim([st fi]);
title('1');

x2 = zeros(mm,1);
for i=1:length(sb2)
    x2 = x2+I((sb2(1,i)+st/dt:sb2(1,i)+fi/dt),1);
end

x2=x2/length(sb2)-I0;

subplot(4,2,2);
plot(st:dt:fi,x2,'m');
xlim([st fi]);
title('2');

x3 = zeros(mm,1);
for i=1:length(sb3)
    x3 = x3+I((sb3(1,i)+st/dt:sb3(1,i)+fi/dt),1);
end

x3=x3/length(sb3)-I0;

subplot(4,2,3);
plot(st:dt:fi,x3,'c');
xlim([st fi]);
title('3');

x4 = zeros(mm,1);
for i=1:length(sb4)
    x4 = x4+I((sb4(1,i)+st/dt:sb4(1,i)+fi/dt),1);
end

x4=x4/length(sb4)-I0;

subplot(4,2,4);
plot(st:dt:fi,x4,'r');
xlim([st fi]);
title('4');

x5 = zeros(mm,1);
for i=1:length(sb5)
    x5 = x5+I((sb5(1,i)+st/dt:sb5(1,i)+fi/dt),1);
end

x5=x5/length(sb5)-I0;

subplot(4,2,5);
plot(st:dt:fi,x5,'b');
xlim([st fi]);
title('5');

x6 = zeros(mm,1);
for i=1:length(sb6)
    x6 = x6+I((sb6(1,i)+st/dt:sb6(1,i)+fi/dt),1);
end

x6=x6/length(sb6)-I0;

subplot(4,2,6);
plot(st:dt:fi,x6,'g');
xlim([st fi]);
title('6');

x7 = zeros(mm,1);
for i=1:length(sb7)
    x7 = x7+I((sb7(1,i)+st/dt:sb7(1,i)+fi/dt),1);
end

x7=x7/length(sb7)-I0;

subplot(4,2,7);
plot(st:dt:fi,x7,'y');
xlim([st fi]);
title('7');

%the code is writen by yinbo
%if it works fine.

%btafi = [x1;x2;x3;x4;x5;x6;x7];
%btafi = reshape(btafi,length(x1),7);

%dlmwrite('bta1_6',btafi,'precision',10);


du = 1.5/dt;
nu = length(sb1);

bef10 = zeros(1,nu);
bef20 = zeros(1,nu);
bef30 = zeros(1,nu);
bef40 = zeros(1,nu);
bef50 = zeros(1,nu);
bef60 = zeros(1,nu);
bef70 = zeros(1,nu);
nu1 = 1;
nu2 = 1;
nu3 = 1;
nu4 = 1;
nu5 = 1;
nu6 = 1;
nu7 = 1;

for i = 2:nu-1
    m = sb1(1,i)-du:sb1(1,i);
    n = c1;
    if length(intersect(m,n)) == 1
       bef10(1,nu1) = sb1(1,i);
       nu1 = nu1+1;
    elseif length(intersect(m,n)) == 2
       bef20(1,nu2) = sb1(1,i);
       nu2 = nu2+1;
    elseif length(intersect(m,n)) == 3
       bef30(1,nu3) = sb1(1,i);
       nu3 = nu3+1;
    elseif length(intersect(m,n)) == 4
       bef40(1,nu4) = sb1(1,i);
       nu4 = nu4+1;
    elseif length(intersect(m,n)) == 5
       bef50(1,nu5) = sb1(1,i);
       nu5 = nu5+1;
    elseif length(intersect(m,n)) == 6
       bef60(1,nu6) = sb1(1,i);
       nu6 = nu6+1;
    elseif length(intersect(m,n)) >= 7; 
       bef70(1,nu7) = sb1(1,i);
       nu7 = nu7+1;
%     elseif isempty(intersect(m,n))
%        bef70(1,nu7) = d1(1,i);
%        nu7 = nu7+1;
    end
end

%spike number before 1.5s

bef1 = bef10(1,1:nu1-1);
bef2 = bef20(1,1:nu2-1);
bef3 = bef30(1,1:nu3-1);
bef4 = bef40(1,1:nu4-1);
bef5 = bef50(1,1:nu5-1);
bef6 = bef60(1,1:nu6-1);
bef7 = bef70(1,1:nu7-1);

dt = 0.0002;
I0 = mean(I);
st = -2;
fi = 1;
tol = (-1)*st+fi;
mm = tol/dt+1;

xx1 = zeros(mm,1);
for i=1:length(bef1)
    xx1 = xx1+I((bef1(1,i)+st/dt:bef1(1,i)+fi/dt),1);
end

xx1=xx1/length(bef1)-I0;

xx2 = zeros(mm,1);
for i=1:length(bef2)
    xx2 = xx2+I((bef2(1,i)+st/dt:bef2(1,i)+fi/dt),1);
end

xx2=xx2/length(bef2)-I0;

xx3 = zeros(mm,1);
for i=1:length(bef3)
    xx3 = xx3+I((bef3(1,i)+st/dt:bef3(1,i)+fi/dt),1);
end

xx3=xx3/length(bef3)-I0;

xx4 = zeros(mm,1);
for i=1:length(bef4)
    xx4 = xx4+I((bef4(1,i)+st/dt:bef4(1,i)+fi/dt),1);
end

xx4=xx4/length(bef4)-I0;

xx5 = zeros(mm,1);
for i=1:length(bef5)
    xx5 = xx5+I((bef5(1,i)+st/dt:bef5(1,i)+fi/dt),1);
end

xx5=xx5/length(bef5)-I0;

xx6 = zeros(mm,1);
for i=1:length(bef6)
    xx6 = xx6+I((bef6(1,i)+st/dt:bef6(1,i)+fi/dt),1);
end

xx6=xx6/length(bef6)-I0;

xx7 = zeros(mm,1);
for i=1:length(bef7)
    xx7 = xx7+I((bef7(1,i)+st/dt:bef7(1,i)+fi/dt),1);
end

xx7=xx7/length(bef7)-I0;

plot(st:dt:fi,xx1,'k');
xlim([st fi]);

hold on;

plot(st:dt:fi,xx2,'m');
xlim([st fi]);

hold on;

plot(st:dt:fi,xx3,'c');
xlim([st fi]);

hold on;

plot(st:dt:fi,xx4,'r');
xlim([st fi]);

hold on;

plot(st:dt:fi,xx5,'b');
xlim([st fi]);

hold on;

plot(st:dt:fi,xx6,'g');
xlim([st fi]);

hold on;

plot(st:dt:fi,xx7,'y');
xlim([st fi]);

hold on;

plot(st:0.02:fi,zeros(size(st:0.02:fi)),'--');
xlim([st fi]);

hold on;

plot(st:dt:fi,x1,'--');
xlim([st fi]);

hold on;

ylim([-0.5 1]);

plot(zeros(size(-0.5:0.02:1.5)),-0.5:0.02:1.5,'--');
plot(zeros(size(-0.5:0.02:1.5))-iss,-0.5:0.02:1.5,'--');


hold on;

title('Burst Trigger Average (BTA)');
legend('1','2','3','4','5','6','>6');

xlabel('time, burst onset at 0 (s)');
ylabel('Input Current'); 

%If this code works, it was written by yinbo.
%If not, I don't know who wrote it.

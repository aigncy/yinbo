figure;
subplot(3,1,1);
plot(t,VF,'k');
title('LP');
xlim([1,120]); 
% ylim([-6 15]);

hold on;

vv = zeros(1,k);
vvv = zeros(1,kkk);

for i = 1:k
    vv(1,i) = VF(1,c1(1,i));
end
plot(c1*dt,vv,'o');

%draw peaks

for i = 1:kkk
    vvv(1,i) = VF(1,d1(1,i));
end
plot(d1*dt,vvv,'rv');

%start peaks

for i = 1:kkk
    vvv(1,i) = VF(1,d2(1,i));
end
plot(d2*dt,vvv,'rv');

%finish peaks

subplot(3,1,2);
plot(t,I,'k');
title('(B) Stochastic stimulation');
xlim([1,1200]);


subplot(3,1,3);
stem(d1*dt,e1,'k');
set(gca,'ytick',0:2:20);
title('(C) Spike Number of Every Burst');

%subplot(4,1,4);
%bar(d1*dt,isi_in,'r');
%set(gca,'ytick',0:2:20);
%xlim([0 T0]);
%title('(D) ISI in a Single Burst')
plot(st:dt:fi,x1,'k');
xlim([st fi]);

hold on;

plot(st:dt:fi,x2,'m');
xlim([st fi]);

hold on;

plot(st:dt:fi,x3,'c');
xlim([st fi]);

hold on;

plot(st:dt:fi,x4,'r');
xlim([st fi]);

hold on;

plot(st:dt:fi,x5,'b');
xlim([st fi]);

hold on;

plot(st:dt:fi,x6,'g');
xlim([st fi]);

hold on;

% plot(st:dt:fi,x7,'y');
% xlim([st fi]);
% 
% hold on;

plot(st:0.02:fi,zeros(size(st:0.02:fi)),'--');
xlim([st fi]);

hold on;

ylim([-0.5 1.5]);

plot(zeros(size(-0.5:0.02:1.5)),-0.5:0.02:1.5,'--');
plot(zeros(size(-0.5:0.02:1.5))-iss,-0.5:0.02:1.5,'--');


hold on;

title('Burst Trigger Average (BTA)');
legend('1','2','3','4','5','6');

xlabel('time, burst onset at 0 (s)');
ylabel('Input Current'); 

%If this code works, it was written by yinbo.
%If not, I don't know who wrote it.

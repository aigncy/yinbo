
a = randperm(length(sb1));  
a = a(1:12);
dv = 35;
V = vb';
subplot(2,3,1);
isss = 1;

vt1 = V(1, (sb1(a(1))-isss/dt:sf1(a(1))+isss/dt));
plot(((1-isss/dt):1:(length(vt1)-isss/dt))*dt,vt1,'k');
hold on;

%voltage trace

vt2 = V(1, (sb1(a(2))-isss/dt:sf1(a(2))+isss/dt))+dv;
plot(((1-isss/dt):1:(length(vt2)-isss/dt))*dt,vt2,'m');
hold on;

vt3 = V(1, (sb1(a(3))-isss/dt:sf1(a(3))+isss/dt))+2*dv;
plot(((1-isss/dt):1:(length(vt3)-isss/dt))*dt,vt3,'c');
hold on;

vt4 = V(1, (sb1(a(4))-isss/dt:sf1(a(4))+isss/dt))+3*dv;
plot(((1-isss/dt):1:(length(vt4)-isss/dt))*dt,vt4,'r');
hold on;

vt5 = V(1, (sb1(a(5))-isss/dt:sf1(a(5))+isss/dt))+4*dv;
plot(((1-isss/dt):1:(length(vt5)-isss/dt))*dt,vt5,'b');
hold on;

vt6 = V(1, (sb1(a(6))-isss/dt:sf1(a(6))+isss/dt))+5*dv;
plot(((1-isss/dt):1:(length(vt6)-isss/dt))*dt,vt6,'g');
hold on;

vt7 = V(1, (sb1(a(7))-isss/dt:sf1(a(7))+isss/dt))+6*dv;
plot(((1-isss/dt):1:(length(vt7)-isss/dt))*dt,vt7,'k');
hold on;

vt8 = V(1, (sb1(a(8))-isss/dt:sf1(a(8))+isss/dt))+7*dv;
plot(((1-isss/dt):1:(length(vt8)-isss/dt))*dt,vt8,'m');
hold on;

vt9 = V(1, (sb1(a(9))-isss/dt:sf1(a(9))+isss/dt))+8*dv;
plot(((1-isss/dt):1:(length(vt9)-isss/dt))*dt,vt9,'c');
hold on;

vt10 = V(1, (sb1(a(10))-isss/dt:sf1(a(10))+isss/dt))+9*dv;
plot(((1-isss/dt):1:(length(vt10)-isss/dt))*dt,vt10,'r');
hold on;

vt11 = V(1, (sb1(a(11))-isss/dt:sf1(a(11))+isss/dt))+10*dv;
plot(((1-isss/dt):1:(length(vt11)-isss/dt))*dt,vt11,'b');
hold on;

vt12 = V(1, (sb1(a(12))-isss/dt:sf1(a(12))+isss/dt))+11*dv;
plot(((1-isss/dt):1:(length(vt12)-isss/dt))*dt,vt12,'g');
hold on;

plot(zeros(size(-300:0.02:300)),-300:0.02:300,'--');
% ylim([-120 300]);
xlim([-1 1]);
set(gca,'ytick',[]);
title('isi = 300ms');

a = randperm(length(sb2));  
a = a(1:12);
dv = 30;
V = vb';
subplot(2,3,2);

vt1 = V(1, (sb2(a(1))-isss/dt:sf2(a(1))+isss/dt));
plot(((1-isss/dt):1:(length(vt1)-isss/dt))*dt,vt1,'k');
hold on;

vt2 = V(1, (sb2(a(2))-isss/dt:sf2(a(2))+isss/dt))+dv;
plot(((1-isss/dt):1:(length(vt2)-isss/dt))*dt,vt2,'m');
hold on;

vt3 = V(1, (sb2(a(3))-isss/dt:sf2(a(3))+isss/dt))+2*dv;
plot(((1-isss/dt):1:(length(vt3)-isss/dt))*dt,vt3,'c');
hold on;

vt4 = V(1, (sb2(a(4))-isss/dt:sf2(a(4))+isss/dt))+3*dv;
plot(((1-isss/dt):1:(length(vt4)-isss/dt))*dt,vt4,'r');
hold on;

vt5 = V(1, (sb2(a(5))-isss/dt:sf2(a(5))+isss/dt))+4*dv;
plot(((1-isss/dt):1:(length(vt5)-isss/dt))*dt,vt5,'b');
hold on;

vt6 = V(1, (sb2(a(6))-isss/dt:sf2(a(6))+isss/dt))+5*dv;
plot(((1-isss/dt):1:(length(vt6)-isss/dt))*dt,vt6,'g');
hold on;

vt7 = V(1, (sb2(a(7))-isss/dt:sf2(a(7))+isss/dt))+6*dv;
plot(((1-isss/dt):1:(length(vt7)-isss/dt))*dt,vt7,'k');
hold on;

vt8 = V(1, (sb2(a(8))-isss/dt:sf2(a(8))+isss/dt))+7*dv;
plot(((1-isss/dt):1:(length(vt8)-isss/dt))*dt,vt8,'m');
hold on;

vt9 = V(1, (sb2(a(9))-isss/dt:sf2(a(9))+isss/dt))+8*dv;
plot(((1-isss/dt):1:(length(vt9)-isss/dt))*dt,vt9,'c');
hold on;

vt10 = V(1, (sb2(a(10))-isss/dt:sf2(a(10))+isss/dt))+9*dv;
plot(((1-isss/dt):1:(length(vt10)-isss/dt))*dt,vt10,'r');
hold on;

vt11 = V(1, (sb2(a(11))-isss/dt:sf2(a(11))+isss/dt))+10*dv;
plot(((1-isss/dt):1:(length(vt11)-isss/dt))*dt,vt11,'b');
hold on;

vt12 = V(1, (sb2(a(12))-isss/dt:sf2(a(12))+isss/dt))+11*dv;
plot(((1-isss/dt):1:(length(vt12)-isss/dt))*dt,vt12,'g');
hold on;

plot(zeros(size(-300:0.02:300)),-300:0.02:300,'--');
% ylim([-120 300]);
xlim([-1 1]);
set(gca,'ytick',[]);

a = randperm(length(sb3));  
a = a(1:12);
dv = 30;
V = vb';
subplot(2,3,3);

vt1 = V(1, (sb3(a(1))-isss/dt:sf3(a(1))+isss/dt));
plot(((1-isss/dt):1:(length(vt1)-isss/dt))*dt,vt1,'k');
hold on;

vt2 = V(1, (sb3(a(2))-isss/dt:sf3(a(2))+isss/dt))+dv;
plot(((1-isss/dt):1:(length(vt2)-isss/dt))*dt,vt2,'m');
hold on;

vt3 = V(1, (sb3(a(3))-isss/dt:sf3(a(3))+isss/dt))+2*dv;
plot(((1-isss/dt):1:(length(vt3)-isss/dt))*dt,vt3,'c');
hold on;

vt4 = V(1, (sb3(a(4))-isss/dt:sf3(a(4))+isss/dt))+3*dv;
plot(((1-isss/dt):1:(length(vt4)-isss/dt))*dt,vt4,'r');
hold on;

vt5 = V(1, (sb3(a(5))-isss/dt:sf3(a(5))+isss/dt))+4*dv;
plot(((1-isss/dt):1:(length(vt5)-isss/dt))*dt,vt5,'b');
hold on;

vt6 = V(1, (sb3(a(6))-isss/dt:sf3(a(6))+isss/dt))+5*dv;
plot(((1-isss/dt):1:(length(vt6)-isss/dt))*dt,vt6,'g');
hold on;

vt7 = V(1, (sb3(a(7))-isss/dt:sf3(a(7))+isss/dt))+6*dv;
plot(((1-isss/dt):1:(length(vt7)-isss/dt))*dt,vt7,'k');
hold on;

vt8 = V(1, (sb3(a(8))-isss/dt:sf3(a(8))+isss/dt))+7*dv;
plot(((1-isss/dt):1:(length(vt8)-isss/dt))*dt,vt8,'m');
hold on;

vt9 = V(1, (sb3(a(9))-isss/dt:sf3(a(9))+isss/dt))+8*dv;
plot(((1-isss/dt):1:(length(vt9)-isss/dt))*dt,vt9,'c');
hold on;

vt10 = V(1, (sb3(a(10))-isss/dt:sf3(a(10))+isss/dt))+9*dv;
plot(((1-isss/dt):1:(length(vt10)-isss/dt))*dt,vt10,'r');
hold on;

vt11 = V(1, (sb3(a(11))-isss/dt:sf3(a(11))+isss/dt))+10*dv;
plot(((1-isss/dt):1:(length(vt11)-isss/dt))*dt,vt11,'b');
hold on;

vt12 = V(1, (sb3(a(12))-isss/dt:sf3(a(12))+isss/dt))+11*dv;
plot(((1-isss/dt):1:(length(vt12)-isss/dt))*dt,vt12,'g');
hold on;

plot(zeros(size(-300:0.02:300)),-300:0.02:300,'--');
% ylim([-120 300]);
xlim([-1 1]);
set(gca,'ytick',[]);


a = randperm(length(sb4));  
a = a(1:12);
dv = 30;
V = vb';
subplot(2,3,4);

vt1 = V(1, (sb4(a(1))-isss/dt:sf4(a(1))+isss/dt));
plot(((1-isss/dt):1:(length(vt1)-isss/dt))*dt,vt1,'k');
hold on;

vt2 = V(1, (sb4(a(2))-isss/dt:sf4(a(2))+isss/dt))+dv;
plot(((1-isss/dt):1:(length(vt2)-isss/dt))*dt,vt2,'m');
hold on;

vt3 = V(1, (sb4(a(3))-isss/dt:sf4(a(3))+isss/dt))+2*dv;
plot(((1-isss/dt):1:(length(vt3)-isss/dt))*dt,vt3,'c');
hold on;

vt4 = V(1, (sb4(a(4))-isss/dt:sf4(a(4))+isss/dt))+3*dv;
plot(((1-isss/dt):1:(length(vt4)-isss/dt))*dt,vt4,'r');
hold on;

vt5 = V(1, (sb4(a(5))-isss/dt:sf4(a(5))+isss/dt))+4*dv;
plot(((1-isss/dt):1:(length(vt5)-isss/dt))*dt,vt5,'b');
hold on;

vt6 = V(1, (sb4(a(6))-isss/dt:sf4(a(6))+isss/dt))+5*dv;
plot(((1-isss/dt):1:(length(vt6)-isss/dt))*dt,vt6,'g');
hold on;

vt7 = V(1, (sb4(a(7))-isss/dt:sf4(a(7))+isss/dt))+6*dv;
plot(((1-isss/dt):1:(length(vt7)-isss/dt))*dt,vt7,'k');
hold on;

vt8 = V(1, (sb4(a(8))-isss/dt:sf4(a(8))+isss/dt))+7*dv;
plot(((1-isss/dt):1:(length(vt8)-isss/dt))*dt,vt8,'m');
hold on;

vt9 = V(1, (sb4(a(9))-isss/dt:sf4(a(9))+isss/dt))+8*dv;
plot(((1-isss/dt):1:(length(vt9)-isss/dt))*dt,vt9,'c');
hold on;

vt10 = V(1, (sb4(a(10))-isss/dt:sf4(a(10))+isss/dt))+9*dv;
plot(((1-isss/dt):1:(length(vt10)-isss/dt))*dt,vt10,'r');
hold on;

vt11 = V(1, (sb4(a(11))-isss/dt:sf4(a(11))+isss/dt))+10*dv;
plot(((1-isss/dt):1:(length(vt11)-isss/dt))*dt,vt11,'b');
hold on;

vt12 = V(1, (sb4(a(12))-isss/dt:sf4(a(12))+isss/dt))+11*dv;
plot(((1-isss/dt):1:(length(vt12)-isss/dt))*dt,vt12,'g');
hold on;

plot(zeros(size(-300:0.02:300)),-300:0.02:300,'--');
% ylim([-120 300]);
xlim([-1 1]);
set(gca,'ytick',[]);


a = randperm(length(sb5));  
a = a(1:12);
dv = 30;
V = vb';
subplot(2,3,5);

vt1 = V(1, (sb5(a(1))-isss/dt:sf5(a(1))+isss/dt));
plot(((1-isss/dt):1:(length(vt1)-isss/dt))*dt,vt1,'k');
hold on;

vt2 = V(1, (sb5(a(2))-isss/dt:sf5(a(2))+isss/dt))+dv;
plot(((1-isss/dt):1:(length(vt2)-isss/dt))*dt,vt2,'m');
hold on;

vt3 = V(1, (sb5(a(3))-isss/dt:sf5(a(3))+isss/dt))+2*dv;
plot(((1-isss/dt):1:(length(vt3)-isss/dt))*dt,vt3,'c');
hold on;

vt4 = V(1, (sb5(a(4))-isss/dt:sf5(a(4))+isss/dt))+3*dv;
plot(((1-isss/dt):1:(length(vt4)-isss/dt))*dt,vt4,'r');
hold on;

vt5 = V(1, (sb5(a(5))-isss/dt:sf5(a(5))+isss/dt))+4*dv;
plot(((1-isss/dt):1:(length(vt5)-isss/dt))*dt,vt5,'b');
hold on;

vt6 = V(1, (sb5(a(6))-isss/dt:sf5(a(6))+isss/dt))+5*dv;
plot(((1-isss/dt):1:(length(vt6)-isss/dt))*dt,vt6,'g');
hold on;

vt7 = V(1, (sb5(a(7))-isss/dt:sf5(a(7))+isss/dt))+6*dv;
plot(((1-isss/dt):1:(length(vt7)-isss/dt))*dt,vt7,'k');
hold on;

vt8 = V(1, (sb5(a(8))-isss/dt:sf5(a(8))+isss/dt))+7*dv;
plot(((1-isss/dt):1:(length(vt8)-isss/dt))*dt,vt8,'m');
hold on;

vt9 = V(1, (sb5(a(9))-isss/dt:sf5(a(9))+isss/dt))+8*dv;
plot(((1-isss/dt):1:(length(vt9)-isss/dt))*dt,vt9,'c');
hold on;

vt10 = V(1, (sb5(a(10))-isss/dt:sf5(a(10))+isss/dt))+9*dv;
plot(((1-isss/dt):1:(length(vt10)-isss/dt))*dt,vt10,'r');
hold on;

vt11 = V(1, (sb5(a(11))-isss/dt:sf5(a(11))+isss/dt))+10*dv;
plot(((1-isss/dt):1:(length(vt11)-isss/dt))*dt,vt11,'b');
hold on;

vt12 = V(1, (sb5(a(12))-isss/dt:sf5(a(12))+isss/dt))+11*dv;
plot(((1-isss/dt):1:(length(vt12)-isss/dt))*dt,vt12,'g');
hold on;

plot(zeros(size(-300:0.02:300)),-300:0.02:300,'--');
% ylim([-120 300]);
xlim([-1 1]);
set(gca,'ytick',[]);

a = randperm(length(sb6));  
a = a(1:12);
dv = 30;
V = vb';
subplot(2,3,6);

vt1 = V(1, (sb6(a(1))-isss/dt:sf6(a(1))+isss/dt));
plot(((1-isss/dt):1:(length(vt1)-isss/dt))*dt,vt1,'k');
hold on;

vt2 = V(1, (sb6(a(2))-isss/dt:sf6(a(2))+isss/dt))+dv;
plot(((1-isss/dt):1:(length(vt2)-isss/dt))*dt,vt2,'m');
hold on;

vt3 = V(1, (sb6(a(3))-isss/dt:sf6(a(3))+isss/dt))+2*dv;
plot(((1-isss/dt):1:(length(vt3)-isss/dt))*dt,vt3,'c');
hold on;

vt4 = V(1, (sb6(a(4))-isss/dt:sf6(a(4))+isss/dt))+3*dv;
plot(((1-isss/dt):1:(length(vt4)-isss/dt))*dt,vt4,'r');
hold on;

vt5 = V(1, (sb6(a(5))-isss/dt:sf6(a(5))+isss/dt))+4*dv;
plot(((1-isss/dt):1:(length(vt5)-isss/dt))*dt,vt5,'b');
hold on;

vt6 = V(1, (sb6(a(6))-isss/dt:sf6(a(6))+isss/dt))+5*dv;
plot(((1-isss/dt):1:(length(vt6)-isss/dt))*dt,vt6,'g');
hold on;

vt7 = V(1, (sb6(a(7))-isss/dt:sf6(a(7))+isss/dt))+6*dv;
plot(((1-isss/dt):1:(length(vt7)-isss/dt))*dt,vt7,'k');
hold on;

vt8 = V(1, (sb6(a(8))-isss/dt:sf6(a(8))+isss/dt))+7*dv;
plot(((1-isss/dt):1:(length(vt8)-isss/dt))*dt,vt8,'m');
hold on;

vt9 = V(1, (sb6(a(9))-isss/dt:sf6(a(9))+isss/dt))+8*dv;
plot(((1-isss/dt):1:(length(vt9)-isss/dt))*dt,vt9,'c');
hold on;

vt10 = V(1, (sb6(a(10))-isss/dt:sf6(a(10))+isss/dt))+9*dv;
plot(((1-isss/dt):1:(length(vt10)-isss/dt))*dt,vt10,'r');
hold on;

vt11 = V(1, (sb6(a(11))-isss/dt:sf6(a(11))+isss/dt))+10*dv;
plot(((1-isss/dt):1:(length(vt11)-isss/dt))*dt,vt11,'b');
hold on;

vt12 = V(1, (sb6(a(12))-isss/dt:sf6(a(12))+isss/dt))+11*dv;
plot(((1-isss/dt):1:(length(vt12)-isss/dt))*dt,vt12,'g');
hold on;

plot(zeros(size(-300:0.02:300)),-300:0.02:300,'--');
% ylim([-120 300]);
xlim([-1 1]);
set(gca,'ytick',[]);

%If this code works, it was written by yinbo.
%If not, I don't know who wrote it.


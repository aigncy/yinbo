load syncur.txt

vc = syncur(:,2);
vi = syncur(:,3);
dt = 0.0002;
t = dt:dt:60;

subplot(2,1,1);
plot(t,vc,'k');

subplot(2,1,2);
plot(t,vi,'k');

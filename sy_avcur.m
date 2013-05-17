avl = 0;

for i = 1:length(d1)-1
    avl = avl + (d1(1,(i+1)) - d1(1,i));
end
avl = avl/(length(d1)-1);
avl = ceil(avl);

acur = zeros(1,avl);

for i = 1:length(d1)-1
    It = I(d1(i):d1(i+1), 1);
    tt = d1(i+1)-d1(i)+1; 
    ttt = 1:tt;
    xi = 1:(tt-1)/(avl-1):tt;
    II = interp1(ttt,It,xi,'spline');
    acur = acur + II;
end
acur = acur/(length(d1)-1);

lpe = 0.5664/1.3546;
time = (1-avl*lpe):avl*(1-lpe);


plot(time*dt,acur,'y');
hold on;

plot(time*dt,smooth(acur,10));

xlim([ (1-avl*lpe)*dt avl*(1-lpe)*dt]);
hold on;
plot(zeros(size(-3:0.02:0)),-3:0.02:0,'r--');

title('Voltage Clamp');
xlabel('Time, LP onset at 0 (s)');
ylabel('Synaptic Current'); 

%If this code works, it was written by yinbo.
%If not, I don't know who wrote it.

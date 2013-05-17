clc;

V = vc';
I = vi;
dt = 0.0002;

a1 = find(V>0.06);
b1 = zeros(1,length(a1));
b1(1,1) = a1(1,1);
j = 1;

for i = 1:(length(a1)-1)
    if a1(1,i+1) > a1(1,i)+5
       j = j+1;
       b1(1,j) = a1(1,i);
       j = j+1;
       b1(1,j) = a1(1,i+1);
    end
end

j = j+1;
b1(1,j) = a1(1,length(a1));

if b1(1,j) == b1(1,j-1)
   b1(1,j) = 0;
   b1(1,j-1) = 0;
   j = j-2;
end

k = 1;
c1 = zeros(1,round(j/2));
temp = 0;

for i = 1:2:j
    temp = find(V(1,b1(1,i):b1(1,i+1)) == max(V(1,b1(1,i):b1(1,i+1))));
    c1(1,k) = b1(1,i)+temp(1,1)-1;
    k = k+1;
end

k = k-1;

dd10 = zeros(1,k);
dd20 = zeros(1,k);
e10 = zeros(1,k);
dd10(1,1) = c1(1,1);
e10(1,1) = 1;
kk = 1;

is = 0.04;

for i = 1:k-1
    if c1(1,i+1) < c1(1,i)+is/dt
       e10(1,kk) = e10(1,kk)+1;
    else kk = kk+1;
         dd10(1,kk) = c1(1,i+1); 
         dd20(1,kk-1) = c1(1,i); 
         e10(1,kk) = 1;
    end
end

dd20(1,kk) = c1(1,k);

isi = zeros(1,k-1);
for i = 1:(k-1)
    isi(1,i) = (c1(i+1)-c1(i))*dt;
end

dd1 = dd10(1,1:kk);
dd2 = dd20(1,1:kk);
e1 = e10(1,1:kk);

dur = (dd2-dd1)*dt;

d10 = zeros(1,kk);
d20 = zeros(1,kk);

kkk = 1;

for i = 1:kk
    if e1(1,i) > 6
        d10(1,kkk) = dd1(1,i);
        d20(1,kkk) = dd2(1,i);
        kkk = kkk+1;
    end
end
kkk = kkk-1;
d1 = d10(1,1:kkk);
d2 = d20(1,1:kkk);      

% isi_in = dur./(e1-1);
% 
% format long g;
% 
% isi_in = round(1000*isi_in)/1000;
% 
% result = [d1;e1;dur;isi_in];

plot(t,V,'k');
%title('');
xlim([1 60]);
% ylim([-6 15]);

hold on;

vv = zeros(1,k);
vvv = zeros(1,kkk);

for i = 1:k
    vv(1,i) = V(1,c1(1,i));
end
plot(c1*dt,vv,'o');

for i = 1:kkk
    vvv(1,i) = V(1,d1(1,i));
end
plot(d1*dt,vvv,'rv');

for i = 1:kkk
    vvv(1,i) = V(1,d2(1,i));
end
plot(d2*dt,vvv,'rv');

%If this code works, it was written by yinbo.
%If not, I don't know who wrote it.


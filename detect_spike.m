clc;

VF = v';
I = ii;
dt = 0.0002;

a1 = find(VF>3.5);
b1 = zeros(1,length(a1));
b1(1,1) = a1(1,1);
j = 1;

%find voltage bigger than threshold

for i = 1:(length(a1)-1)
    if a1(1,i+1) > a1(1,i)+5
       j = j+1;
       b1(1,j) = a1(1,i);
       j = j+1;
       b1(1,j) = a1(1,i+1);
    end
end

%find edge points

j = j+1;
b1(1,j) = a1(1,length(a1));

%the last a1 belongs b1

if b1(1,j) == b1(1,j-1)
   b1(1,j) = 0;
   b1(1,j-1) = 0;
   j = j-2;
end

%special situations
%This should fix something that 
%probably never happen

k = 1;
c1 = zeros(1,round(j/2));
temp = 0;

for i = 1:2:j
    temp = find(VF(1,b1(1,i):b1(1,i+1)) == max(VF(1,b1(1,i):b1(1,i+1))));
    c1(1,k) = b1(1,i)+temp(1,1)-1;
    k = k+1;
end

%find peaks
%I love this part.

k = k-1;

dd10 = zeros(1,k);
dd20 = zeros(1,k);
ee10 = zeros(1,k);
dd10(1,1) = c1(1,1);
ee10(1,1) = 1;
kk = 1;

is = 0.1;
iss = 0.3;

for i = 1:k-1
    if c1(1,i+1) < c1(1,i)+is/dt
       ee10(1,kk) = ee10(1,kk)+1;
    else kk = kk+1;
         dd10(1,kk) = c1(1,i+1); 
         dd20(1,kk-1) = c1(1,i); 
         ee10(1,kk) = 1;
    end
end

%find burst, ee10 is spike number

dd20(1,kk) = c1(1,k);

isi = zeros(1,k-1);
for i = 1:(k-1)
    isi(1,i) = (c1(i+1)-c1(i))*dt;
end

dd1 = dd10(1,1:kk);
dd2 = dd20(1,1:kk);
ee1 = ee10(1,1:kk);

d10 = zeros(1,kk);
d20 = zeros(1,kk);
e10 = zeros(1,kk);
kkk = 1;

for i = 2:kk-1
    if dd1(1,i) - dd2(1,i-1) > iss/dt && dd1(1,i+1) - dd2(1,i) >iss/dt
        d10(1,kkk) = dd1(1,i);
        d20(1,kkk) = dd2(1,i);
        e10(1,kkk) = ee1(1,i);
        kkk = kkk+1;
    end
end

%abandon bursts
%Magic. Do not touch.

kkk = kkk-1;
d1 = d10(1,1:kkk);
d2 = d20(1,1:kkk);
e1 = e10(1,1:kkk);

dur = (d2-d1)*dt;

isi_in = dur./(e1-1);

format long g;

isi_in = round(1000*isi_in)/1000;

result = [d1;e1;dur;isi_in];


%dlmwrite('mydata',result,'precision',10);
%dlmwrite('btayn',bta,'precision',10);

%If this code works, it was written by yinbo.
%If not, I don't know who wrote it.


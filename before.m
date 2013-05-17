du = 1.5/dt;

be1 = 0;
for i = 1:length(sb1)
 m = sb1(1,i)-du:sb1(1,i);
 n = c1;
 be1 = be1+length(intersect(m,n));
end
be1 = be1/length(sb1);

be2 = 0;
for i = 1:length(sb2)
 m = sb2(1,i)-du:sb2(1,i);
 n = c1;
 be2 = be2+length(intersect(m,n));
end
be2 = be2/length(sb2);

be3 = 0;
for i = 1:length(sb3)
 m = sb3(1,i)-du:sb3(1,i);
 n = c1;
 be3 = be3+length(intersect(m,n));
end
be3 = be3/length(sb3);

be4 = 0;
for i = 1:length(sb4)
 m = sb4(1,i)-du:sb4(1,i);
 n = c1;
 be4 = be4+length(intersect(m,n));
end
be4 = be4/length(sb4);

be5 = 0;
for i = 1:length(sb5)
 m = sb5(1,i)-du:sb5(1,i);
 n = c1;
 be5 = be5+length(intersect(m,n));
end
be5 = be5/length(sb5);

be6 = 0;
for i = 1:length(sb6)
 m = sb6(1,i)-du:sb6(1,i);
 n = c1;
 be6 = be6+length(intersect(m,n));
end
be6 = be6/length(sb6);

%average spike number before 1.5s

%If this code works, it was written by yinbo.
%If not, I don't know who wrote it.

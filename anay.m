clear all;

load data21.txt
load data22.txt
load data23.txt
load data24.txt
load data25.txt
load data26.txt
load data27.txt
load data28.txt
load data29.txt
load data30.txt
load data31.txt
load data32.txt

%data input

%t21 = data21(:,1);
v21 = data21(:,2);
vb21 = data21(:,3);
ii21 = data21(:,4);

%t22 = data22(:,1);
v22 = data22(:,2);
vb22 = data22(:,3);
ii22 = data22(:,4);

%t23 = data23(:,1);
v23 = data23(:,2);
vb23 = data23(:,3);
ii23 = data23(:,4);

%t24 = data24(:,1);
v24 = data24(:,2);
vb24 = data24(:,3);
ii24 = data24(:,4);

%t25 = data25(:,1);
v25 = data25(:,2);
vb25 = data25(:,3);
ii25 = data25(:,4);

%t26 = data26(:,1);
v26 = data26(:,2);
vb26 = data26(:,3);
ii26 = data26(:,4);

%t27 = data27(:,1);
v27 = data27(:,2);
vb27 = data27(:,3);
ii27 = data27(:,4);

%t28 = data28(:,1);
v28 = data28(:,2);
vb28 = data28(:,3);
ii28 = data28(:,4);

%t29 = data29(:,1);
v29 = data29(:,2);
vb29 = data29(:,3);
ii29 = data29(:,4);

%t30 = data30(:,1);
v30 = data30(:,2);
vb30 = data30(:,3);
ii30 = data30(:,4);

%t31 = data31(:,1);
v31 = data31(:,2);
vb31 = data31(:,3);
ii31 = data31(:,4);

%t32 = data32(:,1);
v32 = data32(:,2);
vb32 = data32(:,3);
ii32 = data32(:,4);

%save to matlab workspace

dt = 0.0002;
t = dt:dt:14400;
v = [v21;v22;v23;v24;v25;v26;v27;v28;v29;v30;v31;v32];
ii = [ii21;ii22;ii23;ii24;ii25;ii26;ii27;ii28;ii29;ii30;ii31;ii32];
vb = [vb21;vb22;vb23;vb24;vb25;vb26;vb27;vb28;vb29;vb30;vb31;vb32];

subplot(3,1,1);
plot(t,v,'k');

subplot(3,1,2);
plot(t,ii,'m')

subplot(3,1,3);
plot(t,vb,'r')
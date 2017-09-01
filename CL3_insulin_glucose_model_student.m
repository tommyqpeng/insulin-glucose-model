%% CLab 3 - Synaptic Transmission, insulin-glucose model

%% Problem 3 - Time delay model of insulin-glucose response
% define the constants
Vp=3; %L
Vi=11; %L
Vg=10; %L
E=0.2; %L/min
tp=6; %min
ti=100; %min
td=12; %min
Rm=209; % mU/min
a1=6.67; 
C1=300; % mg/L
C2=144; %mg/L
C3=100; % mg/L
C4=80; % mU/L
C5=26; % mU/L
Ub=72; %mg/min
Uo=4; %mg/min
Um=94; % mg/min
Rg=180; % mg/min
alph=7.5; 
bet=1.77;
tau=12; % min; time delay for f5
k=(1/C4)*(1/Vi+1/(E*ti));


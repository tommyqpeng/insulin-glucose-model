%Setting the variables as given - change them as needed in the questions
theta = 2.5;
mu = 7200;
lambda = 2470;
v = 139000;
phi = 0.51;
beta = 1430;
alpha = 7600;
Ql = 8400;
C = 15000;

sim('clab_3_2_sim');

subplot(2,1,1);
plot(G);
hold on;

subplot(2,1,2);
plot(I);
hold on;

%Decreasing beta for plot of type 1 diabetes
v = 70000;
sim('clab_3_2_sim');

subplot(2,1,1);
plot(G, 'r');
legend('Normal', 'Type 2 diabetes');
title('Plot of glucose concentration for normal and type 2 diabetes conditions');
xlabel('Time in hrs');
ylabel('Glucose concentration in mg/mL');


subplot(2,1,2);
plot(I, 'r');
legend('Normal', 'Type 2 diabetes');
title('Plot of insulin concentration for normal and type 2 diabetes conditions');
xlabel('Time in hrs');
ylabel('Insulin concentration in mU/mL');

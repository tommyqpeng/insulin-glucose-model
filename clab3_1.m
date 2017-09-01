clear all;

%Setting the variables as given - change them as needed in the questions
theta = 2.5;
mu = 7200;
lamda = 2470;
v = 139000;
phi = 0.51;
beta = 2000;
alpha = 7600;
Ql = 8400;

% %Varying I from 0 to 0.2mU/mL
% I = 0:0.01:.2;
% G = zeros(1, length(I));
% %Glucose rewritten as a function of insulin
% for index = 1:1:length(I)
% G1 = (mu*theta+Ql)/(lamda+v*I(index)+mu);
% G2 = (Ql)/(lamda+v*I(index));
% if (G1 - theta > 0 || G2 - theta > 0)
%     G(index) = G1;
% else
%     G(index) = G2;
% end
% end
% plot(I,G);
% hold on;

%Varying G from 0 to 2mg/mL
G_new = 0:.01:2;
I_new = zeros(1,length(G_new));
%Insulin equations
for index = 1:1:length(G_new)
    if(G_new(index) > phi)
        I_new(index) = (beta/alpha)*(G_new(index)-phi);
    else
        I_new(index) = 0;
    end
end
plot(G_new,I_new,'r');
ylabel('Insulin Level (mU/mL)');
xlabel('Glucose Level (mg/mL)');
title('Overlay plot of system response in the case for larger than normal production rate of insulin');
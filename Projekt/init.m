clear all

q1=[1; 0; 0; 0];
%q0_est=q1;
q0_est=[cos(pi/3);sin(pi/3)/(3)^0.5;-sin(pi/3)/(3)^0.5;sin(pi/3)/(3)^0.5];

global N
global M

% Macierze kowariancji szumow
M=0.5.*eye(3,3);
N=0.2.*eye(3,3);
P_0=0.1.*eye(3,3);
P_0=reshape(P_0,9,1);


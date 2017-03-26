function [wynik]=Kalman(vals)
% dane
omega=vals(1:4);
q_y=vals(5:8);
q_est=vals(9:12);
P=vals(13:21);
P=reshape(P,3,3);

global N
global M


A=[0 -omega(3) omega(2); omega(3) 0 -omega(1);-omega(2) omega(1) 0];

K=P*inv(N*N');

q_inv=quaternionInverse(q_est);
q1=multiply(q_inv,q_y)-[1;0;0;0];
q2=K*q1(2:4);

dq_est=0.5.*(multiply(q_est,omega))+multiply(q_est,[0;q2]); 
dP=A*P+P*A'+M*M'-P*inv(N*N')*P;


wynik=[dq_est;reshape(dP,9,1)];
end
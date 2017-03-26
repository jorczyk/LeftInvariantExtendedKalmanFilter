function [q_y]=q_y(vals)

q=vals(1:4);
v=vals(5:7);

global N

N_2=N*v;
N_2=[0;N_2];

q_y=q+multiply(q,N_2);

end
% function [result]=multiply(p,q)
% 
% p0=p(1);
% pv=p(2:4);
% q0=q(1);
% qv=q(2:4);
% 
% resultS=p0*q0 -dot(pv,qv)
% resultV=p0.*qv+q0.*pv+cross(pv,qv)
% 
% result=[resultS; resultV]
% 
% end

function [dq]=obiekt(vals)

omega=vals(1:4);
q1=vals(5:8);

dq = 1/2.*multiply(q1,omega);

end


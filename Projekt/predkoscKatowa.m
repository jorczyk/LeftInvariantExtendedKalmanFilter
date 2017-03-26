function [omega]=predkoscKatowa(time)

A1=5;
A2=0;
A3=0;
phi1=0;
phi2=0;
phi3=0;

omega1=A1*sin(time+phi1);
omega2=A2*sin(time+phi2);
omega3=A3*sin(time+phi3);

omega=[0; omega1; omega2; omega3];


end
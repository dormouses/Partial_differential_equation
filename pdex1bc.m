function [pl,ql,pr,qr] = pdex1bc(xl,ul,xr,ur,t)
%global p1,p2, q1, q2;
pl = ul  -11-10*exp(-0.02*t);
ql = 0;
pr = ur - 19;
qr = 0;
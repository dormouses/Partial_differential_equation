function [c,f,s] = pdex1pde(x,t,u,DuDx)
c = 1;
f = 1/(16 * pi ^ 2) * DuDx;
s = 1/64*sin(pi*x)-0.2*exp(-0.02 * t)+0.1*x*exp(-0.02*t);
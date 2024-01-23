function pdex1
%globsl a, b, t0, t1;
m = 0;
a = 0;
b = 2;
t0=0;
t1=2;
x = linspace(a,b,20);
t = linspace(t0,t1,5);

sol = pdepe(m,@pdex1pde,@pdex1ic,@pdex1bc,x,t);
% Extract the first solution component as u.
u = sol(:,:,1);

% A surface plot is often a good way to study a solution.
%surf(x,t,u)    
%title('Numerical solution computed with 20 mesh points.')
%xlabel('Distance x')
%ylabel('Time t')

% A solution profile can also be illuminating.
for i=1:5
     cla;
    plot(x,u(i,:))
    title('Solution at t = 2')
    xlabel('Distance x')
    ylabel('u(x,2)')
    pause(0.5);
end
% --------------------------------------------------------------
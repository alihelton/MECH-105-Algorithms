% Define problem constants
g = 9.81;
mu = 0.55;
F = 150;
m = 25;

% Define the function to be solved for. Is the angle specified in radians or degrees?
F= @(theta) ((mu*m*g)./(cosd(theta)+(mu*sind(theta))))-F;
% THINK, what makes range sense for angle?
lower_bound=0;
upper_bound=90;
% Plot your function. Does plotting give you an idea about where the root is?
axis=0:180;
F_x=F(axis);
plot(axis,F_x)
xlabel('Angle in Degrees')
ylabel('Function Value')
title('F(x)')
% Finaly solve for the root using the bisection script given to you, which can be called as:
[root, fx, ea, iter] = bisect(F, lower_bound, upper_bound);
format long
angle=root;
% These variables will be checked for your final answer:
%angle =  % the angle in degree that solves this problem
%fx =     % the function value at your solved angle
%ea =     % the bisection error estimate
%iter =   % the number of bisection iterations
fprintf('the angle is %d \n',root)
fprintf('The value of the function at the root is %d \n',fx)
fprintf('The error is %d \n',ea)
fprintf('The number of iterations is %d \n',iter)
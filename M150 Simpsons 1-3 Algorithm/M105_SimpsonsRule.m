function [I] = Simpson(x, y)
% Numerical evaluation of integral by Simpson's 1/3 Rule
% Inputs
%   x = the vector of equally spaced independent variable
%   y = the vector of function values with respect to x
% Outputs:
%   I = the numerical integral calculated
lx=length(x); 
ly=length(y);
%error checks 
if lx~=ly
    error('x and y are not vectors of the same size')
end 
if nargin<2
    error('function values with respect to x')
end
for i=2:lx
    if x(i)-x(i-1)~=x(2)-x(1)
        error('x values are not evenly spaced')
    end 
end 
if lx==2 %use trapezoidal rule
    h=x(2)-x(1)
    I=((y(2)+y(1))/2)*h
    warning('Trapeziodal Rule was used')
end 
if lx==3 %use simpsons 1/3 rule
    h=x(3)-x(1)
    I=(h/3)*((y(1)+(4*y(2))+y(3))/2);
end
if lx>3
    if rem(lx,2)~=0;
        h=(x(lx)-x(1))/(lx-1);
        %use simpsons 1/3 rule
        i=sum(y(2:2:(lx-1)));
        j=sum(y(3:2:lx));
        I=(h/3)*(y(1)+(4*i)+(2*j)+y(lx));
    else 
        h=(x(lx)-x(1))/(lx-1);
        %use 1/3 rule then single trapezoidal rule
        i=sum(y(2:2:lx-1));
        j=sum(y(3:2:lx));
        I=((h/3)*(y(1)+(4*i)+(2*j)+y(lx-1)));
        warning('Trapeziodal Rule was Used')
    end 
end 
   
end
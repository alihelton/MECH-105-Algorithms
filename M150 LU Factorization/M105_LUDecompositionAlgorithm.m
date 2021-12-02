function [L, U, P] = luFactor(A)
% luFactor(A)
%	LU decomposition with pivotiing
% inputs:

[m,n]=size(A);
L=eye(m,n);

if m~= n 
    error('Input is not a square matrix')
end

for k=1:n-1
    for i=k+1:n
        factor=A(i,k)/A(k,k);
        L(i,k)=factor;
        A(i,k:n)=A(i,k:n)-factor*A(k,k:n);
    end

end
P=eye(size(A));
U=A;
x=zeros(n,1);
x(n)= P(n)/U(n,n);
Pivot=eye(size(A));
U=Pivot*A;

 
for i=n-1:-1:1
x(i)=(P(i)-U(i,i+1:n)*x(i+1:n))/U(i,i);
end


%Test Function 
P*A==L*U

% outputs:
%	L = lower triangular matrix
%	U = upper triangular matrix
%   P = the permutation matrix


end
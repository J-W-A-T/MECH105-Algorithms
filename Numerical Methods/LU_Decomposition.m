
clear, clc

A = [10 2 -1; -3 -6 2;1 1 5];
b = [27; -61.5; -21.5];
x = A\b;
[n,m] = size(A);
P = zeros(size(A));
% L = zeros(m,n);

if m > n || m < n
    error('Invalid Matrix Input')
end    
    
for m = 1:n
        P(m,m)=1;
end
    
[n,n]=size(A);
L=eye(n); P=L; U=A;
for k=1:n
    [pivot m]=max(abs(U(k:n,k)));
    m=m+k-1;
    if m~=k
       
        temp=U(k,:);
        U(k,:)=U(m,:);
        U(m,:)=temp;
        
        temp=P(k,:);
        P(k,:)=P(m,:);
        P(m,:)=temp;
        if k >= 2
            temp=L(k,1:k-1);
            L(k,1:k-1)=L(m,1:k-1);
            L(m,1:k-1)=temp;
        end
    end
end
s=0;
for c = 1:m                                 %moving up the columns
    for r = s+1:n-1                         %moving through the rows
        newValue = A(r+1,c) / A(c,c);           %calculating the new value.(a21/a11)
        
        A(r+1,:) = A(r+1,:) - newValue * A(c,:); %Subtracting the new value from the upper rows
        
        a(r+1,c) = newValue;                    %filling "a" with the new values
    end
    s = s+1;
end
U = A                                       %U is equal to the new A

L = a; L(:,m) = zeros(m,1);                 %Filling L with the values from 'a' and replaing the rest with zeros
for r = 1:m                                 %Moving diagnolly through L
    L(r,r) = 1;                             %Filling with 1's
end

L = L






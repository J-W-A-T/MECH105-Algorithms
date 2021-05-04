clc, clear 

x = [0 pi/2 pi];
y = [5 8 5];


[n,m] = size(x);
[rowY,columnY] = size(y);

if m ~= columnY
    error("Not the same Dimensions");

end

if x(2)-x(1) ~= x(m)-x(m-1)
    error('not equally spaced')
end

if m == 2
    warning('Using Trapazoidal Rule')
    I = (x(m) - x(1)) * ((y(m)+y(1))/2)

end


E = 0;
O = 0;
if m > 2
if rem(m-1,2) == 0
h = (x(m) - x(1)) / (m-1);
s = 0;
for i = y(2:2:m-1)
    O = (s + sum(i))*4;
    s = s+i;
end
f = 0;
for j = y(3:2:m-1)
    E = (f + sum(j))*2;
    f = f+j;
end

P = y(1) + y(m);
I = (h/3) * (P+O+E)



else
warning('Using Simpsons and Trap Rule')
h = (x(m-1) - x(1)) / (m-2);   
s = 0;
for i = y(2:2:m-3)
    O = (s + sum(i))*4;
    s = s+i;
end
f = 0;
for j = y(3:2:m-4)
    E = (f + sum(j))*2;
    f = f+j;
end    
T = (x(m) - x(m-1)) * ((y(m-1)+y(m))/2)    
    
 
    
P = y(1) + y(m-1);
I = (h/3) * (P+O+E) + T
end
end
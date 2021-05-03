clear,clc


% x = 4.43;
% es = 0.00001;
% ea = 100;
% while ea >= es
%     c = x-((-2 + 6*x - 4*x^2 + 0.5*x^3)/((3*x^2)/2 - 8*x + 6))
%     ea = abs((c - x)/c*100)
%     x = c
% end


% root = 0.17;
% maxit = 3;
% x0 = 0.4;
% x1 = 0.5;
% format long
% for i = 1:maxit
%     
%     
%     c = x0 - ((7*exp(-x0)*sin(x0) - 1) * (x1-x0)) / ((7*exp(-x1)*sin(x1) - 1) - (7*exp(-x0)*sin(x0) - 1))
%     if c < root
%         x1 = c;
%     else
%         x0 = c;
%     end
%     
%     
%     
% end


root = 0.17;
maxit = 3;
x0 = 0.4;
d = .01;
format long
for i = 1:maxit
    
    
    c = x0 - ((7*exp(-x0)*sin(x0) - 1) * (x1-x0)) / ((7*exp(-x1)*sin(x1) - 1) - (7*exp(-x0)*sin(x0) - 1))
    if c < root
        x1 = c;
    else
        x0 = c;
    end
    
    
    
end

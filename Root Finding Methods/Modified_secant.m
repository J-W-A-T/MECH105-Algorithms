clc,clear


root = 0.17;
maxit = 3;
x0 = 0.3;
d = .01;
format long
for i = 1:maxit
    
    
    c = x0 - (d*x0*(7*exp(-x0)*sin(x0) - 1)) / ((7*exp(-x0 + d*x0)*sin(x0 + d*x0) - 1) - (7*exp(-x0)*sin(x0) - 1))
    
    x0 = c;
   
       
    
    
    
end


% x = 0.5825;
% d = 0.05;
% es = 0.01;
% ea = 100;
% while ea >= es
%     c = x-(d * x * (x^5 - 16.05 * x^4 + 88.75 * x^3 -192.0375 * x^2 + 116.35 * x + 31.6875)) / (((x+d*x)^5 - 16.05 * (x+d*x)^4 + 88.75 * (x+d*x)^3 -192.0375 * (x+d*x)^2 + 116.35 * (x+d*x) + 31.6875) - (x^5 - 16.05 * x^4 + 88.75 * x^3 -192.0375 * x^2 + 116.35 * x + 31.6875))   
%     ea = abs((c - x)/c*100);
%     x = c;
% end
%     



% x = 0.02;
% d = 0.00001;
% p = 3;
% k = 0.05;
% es = 0.0001;
% ea = 100;
% while ea >= es
%     c = x - (d*x*((x/1-x)*sqrt((2*p)/(2+x))-k)) / ((((x+d*x)/1-(x+d*x))*sqrt((2*p)/(2+(x+d*x)))-k) - (x/1-x)*sqrt((2*p)/(2+x))-k)
%     ea = abs((c - x)/c*100);
%     x = c;
% end
%     
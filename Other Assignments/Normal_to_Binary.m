
clear,clc
base10 = 237;
N = 0;
if base10 == 0 
    base2 =[0];
    
    
else
    
    while 2^N <= base10
        N = N+1;
    end
    
    base2 = zeros(1,N);
    
    for q = 1:N
        N = N-1
        base10 = base10 - 2^(N)
        if base10 >= 0 
            base2(q) = 1;
        else
            base2(q) = 0;
            base10 = base10 + 2^(N);
        end
    end
end





















% x=237;
%     b=[];
%     m=x;
% while(m>0)
%     c=rem(m,2);
%     b=[c b];
%     m=(m-c)/2;
% end
% 
% rs=0;
% for i=1:length(b)
%     rs=10*rs+b(i);
% end
% disp(rs);
% 
% 
% 


    


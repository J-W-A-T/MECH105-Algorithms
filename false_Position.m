clc,clear
testFunc = @(x) x.^3;
x_left = -1;
x_right = 1;
[root, fx, ea, iter] = falsePosition(testFunc, x_left, x_right);

function [root, fx, ea, iter] = falsePosition(func, xl, xu, es, maxit, varargin)





fxl = func(xl),varargin{:});
fxu = func(xu),varargin{:});                                     % Defining my variables for my error

if fxu * fxl > 0                                     %False position requires there to be a sign change between the left and right guesses.
    error("Functions must have different signs")
elseif nargin < 3                                   %We need multiple inputs, insures we have enough.
    error("Not enough input arguments")
 else

    if nargin < 4                                   %Defining the defaults in case the user does not provide.
        es = 0.0001;
    elseif nargin < 5
        maxit = 200;
    end

iter = 1;
i = 0;

while i <= iter                                     %While statement that finishes once our iterations have been reached.
fxl = func(xl,varargin{:});
fxu = func(xu,varargin{:});
xr = xu - ((fxu * (xl - xu)) / (fxl - fxu));        %False position formula.
fxr = xr.^3;                                        %defining our function at our new guess
    if fxu * fxr > 0                                %if there is not a sign change, we know to assign it to the right guess.
       xu = xr;
       ea = abs((xr - xu)/xr*100);                  %calculates the error
    else                                            %if not we assign it to the left guess.
       xl = xr;
       ea = abs((xr - xl)/xr*100);
    end
    
    
   
    
  
    
    i=i+1;    
end
root=xr;
fx = func(xr,varargin{:});                                  %The function evaluated at the root we found.
end
end

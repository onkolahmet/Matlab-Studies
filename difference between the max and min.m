% Ahmet Önkol 150117018
% Develop a MATLAB script that returns the difference between the maximum
% and minimum values given a range of the independent variable. 
% Determine the difference and plots for the following:

% f(t) = 8*exp(-0.25*x)*sin(x-2)  from t = 0 to 6*pi
% f(x) = exp(4*x).*sin(1./x)      from x = 0.01 to 2
% The built in humps function     from x = 0 to 2

function df = fourthQuestion(f,a,b,int,varargin)
%f = function
%a = lower limit
%b = upper limit
%int = number of intervals
x = linspace(a,b,int);
y = f(x,varargin{:});
df = max(y) - min(y);
fplot(f,[a b],varargin{:});

%% Run these in the Command Window
% PART A
% >> f=@(x) 8*exp(-0.25*x).*sin(x-2);
% >> fourthQuestion(f,0,6*pi,1000)

% PART B
% >> f=@(x) exp(4*x).*sin(1./x);
% >> fourthQuestion(f,0.01,2,1000)

% PART C
% >> fourthQuestion(@humps,0,2,1000)
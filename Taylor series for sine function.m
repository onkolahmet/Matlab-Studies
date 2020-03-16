function  thirdQuestion(x, n)
% Ahmet Önkol 150117018
% Approximation of sine function by the Taylor series (part of)
% input:
%    x - the point at which the function is being evaluated
%    n  - number of terms

i = 1;
trueVal = sin(x);
approxVal = 0;
fprintf('\n');
fprintf(' order    true value    approximated value         error \n');
while(1)
    if i>n 
      break ;
    end 
    approxVal = approxVal+(-1)^(i-1)*x^(2*i-1)/factorial(2*i-1); % calculating approximate value for the current one
    err = 100*(trueVal-approxVal)/trueVal; % calculating error
    fprintf('%3d      %12.10f       %12.10f      %15.10f\n', i, trueVal, approxVal, err);
    i = i+1;
end
%% Run this in the Command Window
%thirdQuestion(0.9, 8);

    
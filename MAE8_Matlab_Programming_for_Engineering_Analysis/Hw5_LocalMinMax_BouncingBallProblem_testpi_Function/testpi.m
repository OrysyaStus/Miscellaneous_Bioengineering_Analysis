function [api nterm] = testpi(tol,method)
% function testpi compares the methods of Leibniz and Madhava to see which
% method appriximates pi faster.
% tol is the tolerance input
% method is the string input: 'Leibniz' or 'Madhava'
% The outputs given will be api, the approximate value of pi and nterm, the
% number of terms.

api=0;
nterm=0;
m=strcmp(method,'Leibniz');
l=strcmp(method,'Madhava');

if m==1
    while abs(api-pi)/pi>=tol;
    api=api+(4*((-1)^nterm/(2*nterm+1)));
    nterm=nterm+1;
    
    end
end
if l==1
    while abs(api-pi)/pi>=tol;
        api=api+(sqrt(12)*((-3)^(-nterm)/(2*nterm+1)));
        nterm=nterm+1;
    end
    
end
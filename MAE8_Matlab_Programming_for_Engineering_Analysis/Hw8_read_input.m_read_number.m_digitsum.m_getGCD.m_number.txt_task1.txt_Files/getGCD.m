function [ gcd ] = getGCD( n1,n2 )
% The inputs are the positive integers, n1 and n2.
% The function calculates the greatest common denominator, gcd, of n1 and n2. 
% function gcd = getGCD(n1,n2)

gcd = n1 - n2 * floor( n1/n2 ); 

if n1<0 || n2<0
    gcd='Warning Input is not a positive integer';
    return
elseif mod (n1,1)~=0 || mod (n1,1)~=0
    gcd='Warning Input is not a positive integer';
    return
end

while gcd ~= 0 
n1 = n2; 
n2 = gcd; 
gcd = n1 - n2 * floor( n1/n2 ); 
end 

gcd = n2 ;


end


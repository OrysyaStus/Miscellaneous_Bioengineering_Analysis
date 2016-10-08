function  [dsum]  = digitsum( n )
% The input is a positive integer, n.
% The function computes the sum of all digits in the number n, dsum. 
% function dsum = digitsum(n)


while mod (n,1)~=0
    dsum='Input argument must be positive integer';
    return
end
    if n<0 
    dsum='Input argument cannot be negative';
    return
    
     
  elseif n~=0
    F=mod(n,10);
    n=(n-F)/10;
    dsum=F + digitsum(n);
  elseif n == 0
    dsum=0;  
    
    %Alternative way to do it using a loop
   % elseif n >=1 && mod(n,1) == 0 
    %S = num2str(n);
    %dsum = 0;
    %for x = 1:length(S)
     %   dsum = dsum + str2double(S(x));
    %end


end


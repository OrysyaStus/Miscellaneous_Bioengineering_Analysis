function [div] = divisibility(a)
% divisibility determines if a number inputed, a, is divisible by 3,5,7 and
% 11; function divisibility returns a logical row vector with 0 meaning false
% and 1 meaning true.

div1 =~ mod(a,3);
div2 =~ mod(a,5);
div3 =~ mod(a,7);
div4 =~ mod(a,11);
div = [div1 div2 div3 div4];

end


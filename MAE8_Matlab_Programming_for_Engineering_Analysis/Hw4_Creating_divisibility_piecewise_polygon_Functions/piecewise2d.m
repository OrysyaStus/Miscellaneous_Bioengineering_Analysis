function f = piecewise2d(x,y)
%piecewise2d computes the following 2D function f(x,y):
% f(x,y) = x + y for x>=0 y>0
% f(x,y) = -x + y for x<0 y>=0
% f(x,y) = -x - y for x<=0 y<0
% f(x,y) = x-y for x>0 y<=0
% input x & y as inputs; f is a matrix output

for i=1:length(x), 
    for j=1:length(y)
    
   if x(i)>=0 & y(j)>0
       f(i,j) = x(i) + y(j)
       
   elseif x(i)<0 & y(j)>= 0
       f(i,j) = -x(i) + y(j)
       
   elseif x(i)<=0 & y(j)<0
       f(i,j) = -x(i) - y(j)
               
   else x(i)>0 & y(j)<=0
       f(i,j) = x(i) - y(j)
   end
    end
end


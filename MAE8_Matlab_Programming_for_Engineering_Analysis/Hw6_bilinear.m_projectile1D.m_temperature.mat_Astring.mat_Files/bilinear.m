function [ Tp ] = bilinear( x,y,T,Px,Py)
% The inputs are one-dimensional x-grid x and y-grid y,the two-dimensional temperature T, 
% and the location Px and Py at target point P.
% The output is the value of temperature Tp at the point P.
% The function needs the following two local (sub) functions to complete the task.
% function [Tp] = bilinear(x, y, T, Px, Py)

if x(1)>Px || x(71)<Px  || y(1)>Py || y(141)<Py
    Tp='Error: Point is out of range of grid';
    return
end
[iloc,jloc] = bound_target(x,y,Px,Py);
[Tp] = interp_target(x,y,iloc,jloc,T,Px,Py);

    function [iloc,jloc] = bound_target(x,y,Px,Py)
   % bound_target is the first local (sub) function which 
   % should find the indices iloc in vector x and jloc in vector y 
     % [iloc,jloc] = bound_target(x,y,Px,Py)
      % If the target point is not bounded by the grid, the function 
      % should output an error message and return 
        for i=1:length(x)
             if x(i)<=Px
                 iloc=x(i);
                    a=i; 
             end
        end 
        for j=1:length(y)
             if y(j)<=Py
                jloc=y(j);
                 b=j;
             end
        end
        end
iloc;
jloc;
a;
b;     
      
    function [Tp] = interp_target(x,y,iloc,jloc,T,Px,Py)
        %Second local function interp_target
        %The function takes input grid vectors x and y, indices iloc and jloc, 
        %the temperature T, the location Px and Py, and returns Tp as the output. 
        %This is where the bilinear interpolation takes place.
        %[Tp] = interp_target(x,y,iloc,jloc,T,Px,Py)
        
        [iloc,jloc]=bound_target(x,y,Px,Py);
        if iloc~=x(71) && jloc~=y(141)
            x1=((x(71)-Px)/(x(71)-iloc))*T(a,b)+((Px-iloc)/(x(71)-iloc))*T(71,b);
            x2=((x(71)-Px)/(x(71)-iloc))*T(a,141)+((Px-iloc)/(x(71)-iloc))*T(71,141);
            Tp=((y(141)-Py)/(y(141)-jloc))*x1+((Py-jloc)/(y(141)-jloc))*x2;
        elseif iloc==x(71) && jloc~=y(141)
                Tp=((y(141)-Py)/(y(141)-jloc))*T(71,b)+((Py-jloc)/(y(141)-jloc))*T(71,141);
        elseif jloc==y(141) && iloc~=x(71)
                Tp=((x(71)-Px)/(x(71)-iloc))*T(a,141)+((Px-iloc)/(x(71)-iloc))*T(71,141);
        elseif iloc==x(71) && jloc==y(141)
                Tp=T(71,141);
        end
        end
end


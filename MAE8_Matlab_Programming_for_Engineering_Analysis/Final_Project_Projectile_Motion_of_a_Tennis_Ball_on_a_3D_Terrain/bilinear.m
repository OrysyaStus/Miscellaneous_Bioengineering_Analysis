function [Tp] = bilinear(x,y,T,Px,Py) 
 % bilinear performs bilinear interpolation of T(x,y) to get Tp(Px,Py)
 % Input: x, y, T, Px, Py -one dimensional xgrid, ygrid and 
 % two dimensional T and target point Px and Py                      
 % Output: Tp - temperature at target point Px, Py
 % [Tp] = bilinear(x,y,T,Px,Py)

 [i1,j1] = bound_target(x,y,Px,Py); 

 Tp = interp_target(x,y,i1,j1,T,Px,Py);

end

 function [ iloc,jloc ] = bound_target(x,y,Px,Py)
 % Bound_target locates indices iloc and jloc nearby the target point P.
 % [iloc, jloc] = bound_target(x,y,Px,Py)

  if ( Px > x(end) || Px < x(1) )
   iloc = -1;
   jloc = -1;
   disp ('Error Px out of bounds bound_target')
   return
  end
  if ( Py > y(end) || Py < y(1) )
   iloc = -1;
   jloc = -1;
   disp ('Error Py out of bounds bound_target')
   return
  end

  [val iloc] = min(abs(Px-x));
  if (Px<x(iloc)); iloc=iloc-1; end

  [val jloc] = min(abs(Py-y));
  if (Py<y(jloc)); jloc=jloc-1; end
  
 end 
 
 function [Tp] = interp_target(x,y,i1,j1,T,Px,Py) 
 % interp_target performs the binear interpolation given i1 and j1
 % [Tp] = interp_target(x,y,i1,j1,T,Px,Py)
 
  if ( i1 < 0 || j1 < 0 )
	 Tp = 'Error Px or Py out of range';
     return
  end

  if Px == x(i1) && Py == y(j1)
     Tp = T(i1,j1);
  elseif Px == x(end)
     Tp = (T(i1  ,j1  )*(y(j1+1)-Py) +  T(i1  ,j1+1)*(Py-y(j1)) ) / (y(j1+1)-y(j1));
  elseif Py == y(end)
     Tp = (T(i1  ,j1  )*(x(i1+1)-Px) +  T(i1+1,j1  )*(Px-x(i1))) / (x(i1+1)-x(i1));
  else
      Tp = (T(i1  ,j1  )*(x(i1+1)-Px)*(y(j1+1)-Py) +  T(i1+1,j1  )*(Px-x(i1))*(y(j1+1)-Py) +  T(i1  ,j1+1)*(x(i1+1)-Px)*(Py-y(j1)) +  T(i1+1,j1+1)*(Px-x(i1))*(Py-y(j1)) ) / ( (x(i1+1)-x(i1))*(y(j1+1)-y(j1)) );
  end
 end
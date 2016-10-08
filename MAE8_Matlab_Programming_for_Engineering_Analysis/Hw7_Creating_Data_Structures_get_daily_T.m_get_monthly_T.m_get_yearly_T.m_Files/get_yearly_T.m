function [T] = get_yearly_T(temperature, year, location)
% The inputs are temperature (be sure to load the 'temperature.mat' file),
% year and location of interest.
% The function computes the yearly-averaged temperature for a given year and location;
% note: if the date and location do not exist the function returns T='The requested date or location is not
% available' 
% function [T] = get_yearly_T(temperature, year, location)


if year <1995 || year >2010
    T = 'The requested date or location is not available'
    return
end

%elseif year==1995 || year==1997 || year==1998 || year==1999 || year==2001 || year==2002 || year==2003 || year==2005 || year==2006 || year==2007 || year==2009 || year==2010
 %   if month == 2
  %      d = 28
   % end
%elseif year==1996 || year==2000 || year==2004 || year==2008
 %   if month == 2
  %      d = 29
   % end

[y] = find([temperature.Year] == year)

switch location
    case 'SanDiego'
        for i = 1:length(y)
            k(i) = temperature(y(i)).Loc.SanDiego 
        end
    case 'RapidCity'
        for i = 1:length(y)
            k(i) = temperature(y(i)).Loc.RapidCity
        end
end

T = sum(k)/(length(y))

end
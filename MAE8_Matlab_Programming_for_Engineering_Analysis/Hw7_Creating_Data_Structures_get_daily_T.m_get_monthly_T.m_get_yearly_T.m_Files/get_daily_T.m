function [T] = get_daily_T(temperature, year, month, day, location)
% The inputs are temperature (be sure to load the 'temperature.mat' file),
% year, month, day, and location of interest
% The function gets the daily temperature for a given date and location;
% note: if the date and location do not exist the function returns T='The requested date or location is not
% available' 
% function [T] = get_daily_T(temperature, year, month, day, location)

if year==1995 || year==1997 || year==1998 || year==1999 || year==2001 || year==2002 || year==2003 || year==2005 || year==2006 || year==2007 || year==2009 || year==2010
    if month == 2
        if day >= 29
            T = 'The requested date or location is not available'
            return
        end
    end
end

if year==1996 || year==2000 || year==2004 || year==2008
    if month == 2
        if day >=30
            T = 'The requested date or location is not available'
            return
        end
    end
end

d = find([temperature.Day] == day)
m = find([temperature.Month] == month)
y = find([temperature.Year] == year)
[i,j,k] = intersect(d,m)
[l,m,n] = intersect(m,y)
[t] = intersect(i,l)
switch location
    case 'SanDiego'
        [T] = temperature(t).Loc.SanDiego
    case 'RapidCity'
        [T] = temperature(t).Loc.RapidCity
    otherwise
        [T] = 'The requested date or location is not available'
end
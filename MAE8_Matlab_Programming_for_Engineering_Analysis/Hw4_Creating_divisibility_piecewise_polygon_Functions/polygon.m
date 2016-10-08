function [perimeter error] = polygon(r,n,method)
% polygon approximates the perimeter of a circle using an inscribed and
% circumscribed regular n-sided polygon with a set radius, r. polygon also 
% computes the error of the inscribe or circumscribe method of approximation
% as a ratio of the approximated perimeter of the polygon to the exact
% circumference of the circle (2*pi*r). 

switch method
    case 'inscribe'
        for i=1:length(n)
            if n(i) >= 3
                perimeter(i) = 2*n(i)*r*sin(pi/n(i));
                error(i) = perimeter(i)/(2*pi*r);
            else 
                perimeter(i) = 9999;
                error(i) = 9999;
            end
        end
    case 'circumscribe'
        for i=1:length(n)
            if n(i) >= 3
                perimeter(i) = 2*n(i)*r*tan(pi/n(i));
                error(i) = perimeter(i)/(2*pi*r);
            else
                perimeter(i) = 9999;
                error(i) = 9999;
            end
        end
    otherwise
        perimeter = 8888;
        error = 8888;
end


function [psimple, pperiodic, pcontinuous] = interest(Po, r, n, t) 
% interest computes the simple (interest payed on the initial 
% investment), periodic compounding (added interest paid to the 
% principle investment at discrete times of the year), and continuous
% compounding (added interest paid to the principle investment continuously)
% interest (Po, r, n, t) = (principle investment, interest rate, compound
% frequency, time)

psimple = Po * (1 + (t * r ));
pperiodic = Po * ((1 + (r/n)).^(n*t));
pcontinuous = Po * (exp(r*t));

%interest = sprintf('%f %f %f', psimple, pperiodic, pcontinuous)

end
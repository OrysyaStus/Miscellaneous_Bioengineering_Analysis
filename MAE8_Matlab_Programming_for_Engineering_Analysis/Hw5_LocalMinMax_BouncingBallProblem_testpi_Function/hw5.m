clear all; close all; clc; format long; 

name='Orysya Stus';
id='A10743411';
hw_num=5;

%% Problem 1
x = [-20:0.1:20];
p1a = x;
f = (cos(x)) .* (exp(-(x ./ 15) .^2));
%plot(x,f)
p1b = f;
%p1c = numel(findpeaks(p1b));    
%[p1d, p1e] = findpeaks(p1b, 'SortStr', 'ascend')
%p1f = numel(fminbnd(f))
%[p1g, p1h] = fminbnd(f)
%[Maxima,MaxIdx] = findpeaks(f)
%fInv = 1.01*max(f) - f;
%[Minima,MinIdx] = findpeaks(fInv)

%% Problem 2
n = [1:32];
for i=1:32;
    f(i) = 10 + (60 * (1 - ((3/4) .^ (i-1))));
end
% find (f = 69.99)
p2c = (f(32)- f(31))/2 %check
p2d = f(32) %check

%% Problem 3



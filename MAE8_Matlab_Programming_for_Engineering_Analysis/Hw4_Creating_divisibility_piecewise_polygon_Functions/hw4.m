clear all; close all; clc; format long; 

name='Orysya Stus';
id='A10743411';
hw_num=4;

%% Problem1
p1a = evalc('help divisibility');
[p1b] = divisibility(33);
[p1c] = divisibility(385);
[p1d] = divisibility(3855);
[p1e] = divisibility(232155);

%% Problem 2
x = [-4:0.02:4];
for i=1:length(x)
    
   if x(i) < -1
      g(i) = x(i).^(-2);
   elseif x(i) <= 1
            g(i) = x(i).^2 + 2;
   else
            g(i) = x(i).^(-2);
        end
   end
p2a = g;
p2b = diff (g);

%% Problem 3
n=39;
f(1)=1;
f(2)=1;
for i = 3:n
    f(i)= f(i-1) + f(i-2);
end
p3a = f;
p3b = sum(p3a);
n=39;
p3c(1)=0;
p3c(2)=p3a(2)/p3a(1);
for i = 2:n
    d(i) = p3a(i)/p3a(i-1);
end
p3c = d;

%% Problem 4
A = [-2.45:0.05:2.5];
A = reshape(A, 10, 10);
B = [0.01:0.01:1];
B = reshape(B, 10, 10);
d = [0.1:0.1:1]';
for i=1:length(A),
    for j=1:length(d)
        mv(i,j) = A(i)*d(j);
    end
end
p4a = mv;

for i=1:length(A),
    for k=1:length(B)
        mm(i,k) = A(i)*B(k);
    end
end
p4b = mm;

for i=1:length(A),
    for k=1:length(B)
        if k>i
            val(i,k)= 1;
        else
            val(i,k)=0;
        end
    end
end
p4c = val; 

C = zeros(10);
for i=1:length(A),
    for h=1:length(C)
        if i>h
            mat(i,h) = 1;
        elseif i<h
            mat(i,h) = -1;
        else 
            mat(i,h)= 0;
        end
    end
end
p4d = mat;  

%% Problem 5
p5a = evalc('help piecewise2d');
p5b = piecewise2d([0:10], [0]);
p5c = piecewise2d([0], [0:10]);
p5d = piecewise2d([-10:0], [0]);
p5e = piecewise2d([0], [-10:0]);
p5f = piecewise2d([-10:4:10], [-10:4:10]);   
%% Problem 6
p6a = evalc('help polygon');
r = 1;
[p6b p6c] = polygon(r, 2, 'inscribe');
[p6d p6e] = polygon(r, 10, 'circle');
vecn = [5:5:100];
[p6f p6g] = polygon(r, vecn, 'inscribe');
[p6h p6i] = polygon(r, vecn, 'circumscribe');
%plot(vecn, p6g, 'b-', vecn, p6i, 'c-')
%title('Error approximation vs. n-sided regular polygon')
%xlabel('number of sides in a regular polygon(n)')
%ylabel('error approximation')
%legend('inscribe', 'circumscribe')
p6j = 'See figure 1';
p6k = 'Method inscribe is better';




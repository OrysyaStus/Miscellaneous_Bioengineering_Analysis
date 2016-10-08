clear all; close all; clc; format long; 

name='Orysya Stus';
id='A10743411';
hw_num=6;

%% Problem 1
load 'temperature.mat';
p1a = evalc('help bilinear');
p1b = evalc('help bilinear>bound_target');
p1c = evalc('help bilinear>interp_target');
[p1d] = bilinear(x,y, T, -7.1, 7.5);
[p1e] = bilinear(x,y, T, 1.5, -14.1);
[p1f] = bilinear(x,y, T, -7.5, -14.1);
[p1g] = bilinear(x,y, T, 3.2, -1.2);
[p1h] = bilinear(x,y, T, 3.1, -1.1);

xfine=[-7:0.1:7]';
yfine=[-14:0.1:14]';
for i=1:length(xfine);
    for j=1:length(yfine);
        Tfine(i,j)=bilinear(x,y,T,xfine(i),yfine(j));
   end
end
Tfine;
figure(1);
surf(Tfine);
title('2D Temperature Field Distribution');
xlabel('y');
ylabel('x');
zlabel('temperature');
p1i='See figure 1';

%% Problem 2
p2a = evalc('help projectile1D');
Zo = 500; Wo = 0; time = [0:0.01:10];
p2b = 500 - (1/2)*(9.81)*((time).^ 2);
[p2c p2d p2e] = projectile1D(500, 0, 10, 1);
[p2f p2g p2h] = projectile1D(500 , 0, 10, 0.01);
%plot(time, p2b, 'k', p2c, p2d, 'r', p2f, p2g, 'c');
%legend('Analytical solution', '1 sec. step', '0.01 sec. step');
%title('Height versus time');xlabel('time'); ylabel('height'); 
p2i = 'See figure 2';
p2j = 'Yes, as the time step is reduced the height Z gets closer to the analytical solution'

[q p2k t] = projectile1D(500 , 0, 10, 0.01);

p2l = 'The maximum height in p2k varies directly with the initial velocity Wo (as the values of Wo increase, so do the values of Z)';


%% Problem 3
load 'Astring.mat';
p3a = strrep(Astring, 'matlab', 'MATLAB');
p3b = numel(strfind(Astring, 'matlab'));
p3c = (sum(isletter(Astring)))/(length(Astring));
p3d = strrep(Astring, '30141592653589793115', '');
p3e_1 = strrep(Astring,'MaTLaB', '      ');
p3e = strrep (p3e_1, 'matlab', '      ');
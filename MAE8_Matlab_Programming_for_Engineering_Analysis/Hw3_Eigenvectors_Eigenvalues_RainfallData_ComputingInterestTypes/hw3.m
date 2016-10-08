clear all; close all; clc; format long; 

name='Orysya Stus';
id='A10743411';
hw_num=3;

%% Problem1
A = 0.5 * ones(3) + 2.0 * eye(3);
p1a = A
p1b = det(A)
p1c = eig(A)
[v,e] = eig(A);
p1d = v

%% Problem 2
p2a = clock
p2b = sprintf('%d:%d:%4.0f', p2a(2), p2a(3), p2a(1))
p2c = sprintf('%d:%d:%2.2f', p2a(4), p2a(5), p2a(6))
p2d = sprintf('%d:%d:%2.0f', p2a(4), p2a(5), p2a(6)) 
p2e = sprintf('%s  %s', p2b, p2d) 

%% Problem 3
C = [pi pi/2 pi/3 ; pi/2 pi pi/4; pi/3 pi/4 pi]
p3a = sprintf('%4.2f \n', C(1:3))
p3b = sprintf('%4.2f %4.2f %4.2f', C(1), C(4), C(7)) 
p3c = sprintf('%6.4f \n', C)
p3d = sprintf('%6.4e \n', C)

%% Problem 4
load rainfall.dat
p4a = rainfall(1:163)
p4b = rainfall(2120:2282)
p4c_mean = mean(p4b);
L = length (p4a);
p4c = p4c_mean * ones(1,L)
p4d_max = max(rainfall(:,14));
p4d_min = min(rainfall(:,14));
p4d = [p4d_max, p4d_min]
%p4d = [max(rainfall(:,14)), min(rainfall(:,14))]
p4e = [rainfall(31,1), rainfall(14, 1)]
%plot (p4a, p4b, 'k-')
%hold on
%plot (p4a, p4c, 'b-')
%hold on
%plot (p4d_max, 'rs')
%hold on 
%plot (p4d_min, 'gd')
%title ('Total and average rainfall versus time')
%xlabel('year')
%ylabel('rainfall')
%legend ('Total rainfall per year', 'Average rainfall per month')
p4f = 'See figure 1'
p4g = rainfall(163:163:end)
p4h = [1:12]
p4i = 'see figure 2'
%bar(p4h, rainfall(326:163:2119))
%title ('Monthly rainfall for the year 2012')
%xlabel('months')
%ylabel('rainfall')
p4j = rainfall(151:161,:)
save 'newrainfall.dat' p4j -ascii
p4k = sprintf('%4.4d %4.2f %4.2f %4.2f %4.2f %4.2f %4.2f %4.2f %4.2f %4.2f %4.2f %4.2f %4.2f %4.2f %4.2f %4.2f %4.2f %4.2f %4.2f %4.2f %4.2f\n', p4j')

%% Problem 5
p5a = evalc('help interest')
time = [1:100];
[psimple pperiodic pcontinuous] = interest (1000, 0.05, 4, time);
p5b = psimple 
p5c = pperiodic 
p5d = pcontinuous 
p5b_norm = p5b/1000;
p5c_norm = p5c/1000;
p5d_norm = p5d/1000;
%plot(time, p5b_norm, 'b', time, p5c_norm, 'c', time, p5d_norm, 'g')
%title('Returns normalized by initial investment versus time')
%xlabel('time')
%ylabel('returns normalized by initial investment')
%legend('psimple', 'pperiodic', 'pcontinuous')
p5e = 'See figure 3'
clear all; close all; clc; format long; 

name='Orysya Stus';
id='A10743411';
hw_num=8;

%% Problem 1
p1a = evalc ('help read_input');
[Xo, Yo, Zo, Umag, theta, phi, C] = read_input('task1.txt', 1);
p1b = [Xo, Yo, Zo, Umag, theta, phi, C]; 
[Xo, Yo, Zo, Umag, theta, phi, C] = read_input('task1.txt', 2);
p1c = [Xo, Yo, Zo, Umag, theta, phi, C];
[Xo, Yo, Zo, Umag, theta, phi, C] = read_input('task1.txt', 3);
p1d = [Xo, Yo, Zo, Umag, theta, phi, C];
[Xo, Yo, Zo, Umag, theta, phi, C] = read_input('task1.txt', 4);
p1e = [Xo, Yo, Zo, Umag, theta, phi, C];
[Xo, Yo, Zo, Umag, theta, phi, C] = read_input('task1.txt', 5);
p1f = [Xo, Yo, Zo, Umag, theta, phi, C];

%% Problem 2
K = {1, 2};
K{1} = @(C) C + 273.15;
K{2} = @(F) (5/9)*(F + 459.67);
p2a = K;
p2b = K{1}(20);
p2c = K{2}(90);
R = 0.08206;
P = @(n,T,V) (n*R*T)/V;
p2d = P;
K2e = K{1}(27);
p2e = P(0.12, K2e, 4.0);
K2f = K{2}(90);
p2f = P(0.12, K2f, 4.0);
temp = [25:0.1:35];
Temp = K{1}(temp);
plot2g = P(0.12, Temp, 4.0);
plot(temp, plot2g);
title('Pressure changes vs. temperature in the container of CO2'); xlabel('temperature (K)'); ylabel('pressure');
p2g = 'See figure 1';

%% Problem 3
p3a = evalc('help get_number');
p3b = get_number('number.txt');
p3c = evalc('help digitsum');
p3d = digitsum(p3b(1));
p3e = digitsum(p3b(2));
p3f = digitsum(p3b(3));
p3g = digitsum(p3b(4));
p3h = evalc('help getGCD');
p3i = getGCD(p3b(1), p3b(end));
p3j = getGCD(p3b(2), p3b(end));
p3k = getGCD(p3b(end), 525);
p3l = getGCD(p3b(end), 345525);
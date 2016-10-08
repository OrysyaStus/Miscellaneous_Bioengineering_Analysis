clear all; close all; clc; format long; 

name='Orysya Stus';
id='A10743411';
hw_num=7;

%% Problem 1
element=struct('name', 'Helium', 'symbol', 'He', 'atomicNumber', 2, 'atomicWeight', 4.002602, 'electrons', 2);
element.electrons= [2 0 0 0 0 0 0];
p1a = element;
p1b = struct2cell(p1a);
p1c = 'No information is lost';
fname = fieldnames(p1a);
p1d = fname;
p1e = cell2struct(p1b, p1d,1);

%% Problem 2
contact(1)=struct('Name', 'James Smith', 'phone', struct('work', '619-793-2323', 'home', '858-516-7812'), 'email', struct('work', 'jsmith@gmail.com', 'home', 'jsmith@yahoo.com'));
contact(1).phone.work = {'619-793-2323' '858-516-7812'};
contact(2)=struct('Name', 'Mary Lee', 'phone', struct('work', '619-808-7523', 'home', '858-534-9875'), 'email', struct('work', 'mlee@gmail.com', 'home', 'mlee123@hotmail.com'));
contact(2).phone.work = {'619-808-7523' '619-808-7555'};
p2a = contact(1);
p2b = contact(2);
contact(1).phone.work(2) = [];
p2c = contact(1).phone.work;
contact(2).phone.work(1) = [];
p2d = contact(2).phone.work;

%% Problem 3
load 'temperature.mat'
year = 1999; month = 2; day = 31; location = 'SanDiego';
[p3a] = get_daily_T(temperature, year, month, day, location);
year = 1999; month = 2; day = 28; location = 'SanDiego';
[p3b] = get_daily_T(temperature, year, month, day, location);
year = 1999; month = 2; day = 28; location = 'RapidCity';
[p3c] = get_daily_T(temperature, year, month, day, location);
year = 1990; month = 2; location = 'RapidCity';
[p3d] = get_monthly_T(temperature, year, month, location);
year = 1995; month = 2; location = 'RapidCity';
[p3e] = get_monthly_T(temperature, year, month, location);

i = 1;
monthy_temperature = repmat(struct('Year','0', 'Month','0', 'SanDiego', 0, 'RapidCity', 0), (2010-1995)*12,1);
for Y = 1995:2010;
    for M = 1:12;
        monthly_temperature(i) = struct('Year', Y, 'Month', M, 'SanDiego', get_monthly_T(temperature, Y, M, 'SanDiego'), 'RapidCity', get_monthly_T(temperature, Y, M, 'RapidCity'));
        i = i + 1;
    end
end
p3f = [monthly_temperature.Year];
p3g = [monthly_temperature.Month];
p3h = [monthly_temperature.SanDiego];
p3i = [monthly_temperature.RapidCity];
year = 1990; location = 'RapidCity';
[p3j] = get_yearly_T(temperature, year, location);
year = 1995; location = 'RapidCity';
[p3k] = get_yearly_T(temperature, year, location);

i = 1;
yearly_temperature = repmat(struct('Year', '0', 'SanDiego', 0, 'RapidCity', 0), (2010-1995)*1,1);
for Y = 1995:2010;
    yearly_temperature(i) = struct('Year', Y, 'SanDiego', get_yearly_T(temperature, Y, 'SanDiego'), 'RapidCity', get_yearly_T(temperature, Y, 'RapidCity'));
    i = i + 1;
end
p3l = [yearly_temperature.Year];
p3m = [yearly_temperature.SanDiego];
p3n = [yearly_temperature.RapidCity];
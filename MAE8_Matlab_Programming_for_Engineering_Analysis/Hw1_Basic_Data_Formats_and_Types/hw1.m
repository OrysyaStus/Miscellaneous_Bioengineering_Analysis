%Orysya; A10743411; hw_num=1

p1a = 9876^(5)
%p1a = 9.3952e+19;
p1b = 6453^(1/5)
%p1b = 5.7803;
p1c = tan(pi)
%p1c = -1.2246e-16; 
p1d = sind(45)
%p1d = 0.7071;
p1e = sqrt(-1)
%p1e = 0.0000 + 1.0000i;
p1f = log2(8)
%p1f = 3;
p1g = log10(1000)
%p1g = 3;
p1h = log(exp(1))
%p1h = 1;

p2a = char(65)
%p2a = A;
p2b = char(87)-char(45)
%p2b = 42;
p2c = char(0)
%p2c =  ;
p2d = int32('A')
%p2d = 65;
p2e = real('A')
%pde = 65;
p2f = class('A')
%p2f = char;
r='A'<char(0);
p2g = class(r)
%p2g = logical

p3a = 'A'>= 'a'- 26
%p3a = 0;
p3b = 'g'>= 'k'-5
%p3b = 1;
p3c =(9==2) > 1
%p3c = 0;
p3d = 4\12+4 < 5
%p3d = 0;
p3e = 4/12+4 < 5
%p3e = 1;
p3f = 4 < 7 & 67 > 24
%p3f = 1;
p3g = 5 > 6 || 4 < 5
%p3g = 1;
p3h = xor(4<4,8>4)
%p3h = 1;

p4a = fix(3.5)==floor(3.5)
%p4a = 1;
p4b = fix(3.4)==fix(-3.4)
%p4b = 0;
p4c = fix(3.2)==floor(3.2)
%p4c = 1;
p4d = fix(-3.2)==floor(-3.2)
%p4d = 0;
p4e = fix(-3.2)==ceil(-3.2)
%p4e = 1;

p5a = 'upper'
%p5a = uppercase letters come first;
p5b = abs(int32('A' - 'a'))
%p5b = 32;  
p5c = int32('B' - 'b') == int32('A' - 'a')
%p5c = 1;

format bank, p6a = 12.34567
%p6a = 12.35;
format +; p6b = 9.76;
%pb6 = +
format hex, p6c = 1616
%p6c = 4099400000000000
format rat; p6d = (5/16) + (2/7)
%p6d = 67/112
format shortG, p6e = 5678.23221412
%p6e = 5678.2

r = 10;
theta = 84;
x = r * cosd(theta)
y = r * sind(theta)
p7a = x
p7b = y
%p7a = 1.0453
%p7b = 9.9452

%p8a:
pounds = 10.7;
kilos = 2.2*pounds;
p8a = kilos
%p8b:
ftemp = 65.2;
ctemp = (ftemp - 32) * (5/9);
p8b = ctemp
%p8c:
miles = 8.0;
km = miles/1.6093;
p8c = km
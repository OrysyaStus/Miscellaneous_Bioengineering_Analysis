%Orysya; A10743411; hw_num=2

p1a = [1900:5:1995]
p1b = linspace(2000,2095,20)
p1c = [p1a,p1b]     
p1d = length(p1c)
p1e = p1c(1:2:end)
p1f = find(p1c==2050)
p1g = [p1c, 2100]
p1h = p1c(1:20)
p1i = p1c(20:40)       

p2a = [-7;-6;-5;-4;-3;-2;-1;0;1;2;3;4;5;6;7]
vec2a = -7:7;
p2b = vec2a'
p2c = linspace(-7,7,15)'
vec2c = 1:2:1000;
p2d = vec2c'
p2e = p2d.^2     
p2f = sum(p2e)
p2g = prod(p2e)        
p2h = cumsum(p2e)

p3a = zeros(5,5)
vec3b = zeros(5,4);
p3b = [vec3b ones(5,1)]
p3c = p3b'
p3d = rot90(p3b,3)
p3e = p3c == p3d

A = [1 3 5; 2 2 4; 4 5 7];
p4a = A
b = [1;4;9];
p4b = b
x = inv(A)*b;
p4c = x
x = A\b;               
p4d = x
p4e = p4c == p4d
p4f = abs(p4c - p4d)

p5a = ones(1, 10)
p5b = [1:1:10]
p5c = sum(p5a./p5b)

dx = 0.01;
x = [-1:0.01:1];
p6a = x
f = tanh(x);
p6b = f
p6c = diff (f)
p6d = max(p6c)

dz = 0.01;
z = [-1:0.01:1];
p7a = z
g = sech(z).^2;
p7b = g
p7c = sum(g)*dz
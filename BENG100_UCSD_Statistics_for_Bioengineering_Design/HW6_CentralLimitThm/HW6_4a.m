a=2.5;
b=5.5;
D=rand;
X=a*D+b
for i=1:10,
    vectorY(i) = poissrnd(X);
end
vectorY
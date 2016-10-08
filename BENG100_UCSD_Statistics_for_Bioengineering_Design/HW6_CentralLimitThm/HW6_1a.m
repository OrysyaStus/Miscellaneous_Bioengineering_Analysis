lambda = [1 5 15 25];

for i = 1:length(lambda)
y1a=poissrnd(lambda(i),1,1000)
hist(y1a)
figure
qqplot(y1a)
figure
end
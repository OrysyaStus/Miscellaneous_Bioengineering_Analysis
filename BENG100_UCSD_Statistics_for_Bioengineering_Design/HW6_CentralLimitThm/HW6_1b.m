n = [15 25 50]
p = [.1 .3 .5]
for i = 1:length(n)
    for j = 1:length(p)
    y1b = binornd(n(i),p(j),1,1000)
    hist(y1b)
    figure 
    qqplot(y1b)
    figure
    end
end

x = rand(1,1)*5+3
y = poissrnd(x,[10,1])

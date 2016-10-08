1c).

function outcomes = generateRandomBinaryVector(p,n)
vector=zeros(n,1);
for index=1:n,
    vector(index,1)=generateRandomCoinFlip(p);
end
outcomes=vector;
end

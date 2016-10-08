1b).

function outcome = generateRandomCoinFlip(p)
u = rand;
if u <= p 
    coinFlip=1;
    outcome=coinFlip;
else
    coinFlip=0;
    outcome=coinFlip;
end
Orysya Stus
A10743411

function totalProbabilityFunction (prior, likelihood);
prior = [0.4;0.2;0.3;0.1];
likelihood = [0.3, 0.2, 0.3, 0.2; 0.2, 0.3, 0.2, 0.3; 0.3, 0.2, 0.3, 0.2; 0.2, 0.3, 0.2, 0.3];
pb = likelihood * prior;

end
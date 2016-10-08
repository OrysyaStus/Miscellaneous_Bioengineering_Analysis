function Bayes(prior, likelihood, k)
pb=likelihood*prior;
pagivenb = likelihood(:,k).*prior/pb(k)

end
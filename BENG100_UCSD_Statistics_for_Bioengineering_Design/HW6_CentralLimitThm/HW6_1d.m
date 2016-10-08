a=cumsum(rand(6,10000));

figure
subplot(2,1,1),hist(a(1,:),500)
title('Empirical CDF 1 sample')
subplot(2,1,2),qqplot(a(1,:))
figure
subplot(2,1,1),hist(a(2,:)/2,500)
title('Empirical CDF 2 samples')
subplot(2,1,2),qqplot(a(2,:)/2)
figure
subplot(2,1,1),hist(a(3,:)/3,500)
title('Empirical CDF 3 samples')
subplot(2,1,2),qqplot(a(3,:)/3)
figure
subplot(2,1,1),hist(a(4,:)/4,500)
title('Empirical CDF 4 samples')
subplot(2,1,2),qqplot(a(4,:)/4)
figure
subplot(2,1,1),hist(a(5,:)/5,500)
title('Empirical CDF 5 samples')
subplot(2,1,2),qqplot(a(5,:)/5)
figure
subplot(2,1,1),hist(a(6,:)/6,500)
title('Empirical CDF 6 samples')
subplot(2,1,2),qqplot(a(6,:)/6)
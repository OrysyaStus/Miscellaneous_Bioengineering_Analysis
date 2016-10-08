vectory = [5,4,6,3,2,3,4,3,5,2];
vectorN = [1,2,5,10];

for i=1:length(vectorN)
    n=vectorN(i);
    sumY=sum(vectory(1:n));
    for i2=1:length(vectorU),
        u=vectorU(i2);
        vector2X(i,i2)=pdfX(u)*(u^sumY)*exp(-n*u);
    end
    
normC = sum(vector2X(i,:)*0.01);
vector2X(i,:) = vector2X(i,:)/normC; 
subplot(4,1,i)
plot(vectorU,vector2X(i,:));
xlabel('u');
title(sprintf('X|Y1 to Y{%d}',n));
end
end
function func=pdfX(u)
  if 3<=u&u<= 7
      func=2/3;
  elseif 7<=u&u<=8
      func=1/3;
  else func=0;
  end
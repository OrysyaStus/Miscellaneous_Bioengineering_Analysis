vectory=[5,4,6,3,2,3,4,3,5,2];
vectorN=[1,2,5,10];
for i=1:length(vectorN)
    n=vectorN(i);
    yvector(i)=sum(vectory(1:n))/n;
    epsil(i)=4*sqrt(10/n);
    confidence(i,1)=yvector(i)-epsil(i);
    confidence(i,2)=yvector(i)+epsil(i); 
end
disp(yvector)
disp(epsil)
disp(confidence)
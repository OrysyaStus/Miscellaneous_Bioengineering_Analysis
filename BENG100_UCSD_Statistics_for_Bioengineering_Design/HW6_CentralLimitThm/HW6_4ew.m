v = 3:.0001:8;
pdfX1=zeros(size(v));
pdfX2=zeros(size(v));
pdfX3=zeros(size(v));
pdfX4=zeros(size(v));
Y1=5;
Y2=[5,4];
Y3=[5,4,6,3,2];
Y4=[5,4,6,3,2,3,4,3,5,2];
C1=0;
C2=0;
C3=0;
C4=0;

for X1=3:.0001:8
    add=exp(-length(Y1)*X1)*X1^(sum(Y1));
    C1=C1+add*0.01;
end
for index=1:length(v)
    X=v(index);
    if X>=3 && X<=8
        pdfX1(index)=exp(-length(Y1)*X)*X^(sum(Y1))/C1;
    end
end

for X1=3:.0001:8
    add=exp(-length(Y2)*X1)*X1^(sum(Y2));
    C2=C2+add*0.01;
end
for index=1:length(v)
    X=v(index);
    if X>=3 && X<=8
        pdfX2(index)=exp(-length(Y2)*X)*X^(sum(Y2))/C2;
    end
end

for X1=3:.0001:8
    add=exp(-length(Y3)*X1)*X1^(sum(Y3));
    C3=C3+add*0.01;
end
for index=1:length(v)
    X=v(index);
    if X>=3 && X<=8
        pdfX3(index)=exp(-length(Y3)*X)*X^(sum(Y3))/C3;
    end
end

for X1=3:.0001:8
    add=exp(-length(Y4)*X1)*X1^(sum(Y4));
    C4=C4+add*0.01;
end
for index=1:length(v)
    X=v(index);
    if X>=3 && X<=8
        pdfX4(index)=exp(-length(Y4)*X)*X^(sum(Y4))/C4;
    end
end

v = 1:.001:10;
for index=1:length(v)
    u=v(index);
    pdfxplot(index)=hw4cpdfx(u);
end
plot(v,pdfxplot,'b');
plot(v,pdfX4,'r');
plot(v,pdfX1,'k');
plot(v,pdfX2,'g');
plot(v,pdfX3,'c');
end

function [pdfx]=hw4cpdfx(u)
if u>=3 && u<=7
    pdfx=2/9;
elseif u>7 && u<=8
    pdfx=1/9;
else
    pdfx=0;
end
end

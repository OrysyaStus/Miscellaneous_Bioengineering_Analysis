vectorU=3:0.0001:8;
for i=1:length(vectorU)
    u=vectorU(i);
    pdfXvector(i)=pdfX(u);
end
figure;
plot(vectorU,pdfXvector);
xlabel('u');
ylabel('fX(u)');
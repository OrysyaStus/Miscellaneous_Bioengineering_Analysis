normc=1;
v = 13.3;
vectoru = -2:0.01:2;

for i=1:length(vectoru),
    u = vectoru(i);
    plotXvector(i) = pdfX3cde(u,normc);
    priorX = plotXvector(i);
    likelihoodYgivenX = pdfYgivenX(v,u,muN,variN);
    plot2Xvector(i) = priorX*likelihoodYgivenX;
end

normc = sum(plot2Xvector*0.01);
plot2Xvector = plot2Xvector/normc;
subplot(2,1,1);
plot(vectoru,plotXvector);
xlabel('u');
ylabel('f{X}(u)');
subplot(2,1,2);
plot(vectoru,plot2Xvector);
xlabel('u');
ylabel('f{X|Y}(u|13.3)');
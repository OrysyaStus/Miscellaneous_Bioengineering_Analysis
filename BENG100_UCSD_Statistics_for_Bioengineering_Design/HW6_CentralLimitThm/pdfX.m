function f=pdfX(u,normc)
if 1<=u&u<=2
   f=normc*(2-u);
elseif -2<=u&u<=-1
   f=normc*(2+u);
else
   f=0;
end
function HW6_3d
x=-30:.0001:30;
fun= 0.5*((1/sqrt(2*pi*3)))*exp(-((x+10).^2)/6) + 0.5*(1/(sqrt(2*pi*3)))*exp(-((x-10).^2)/6);
plot(x,fun,'r-')
end
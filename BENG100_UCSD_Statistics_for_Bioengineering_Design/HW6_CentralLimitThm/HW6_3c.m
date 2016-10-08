function HW6_3c
x=-30.00001:30;
fun=(1/(sqrt(2*pi*3)))*exp(-((x+10).^2)/6);
plot(x,fun,'c-')
end
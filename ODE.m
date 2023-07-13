clc;

h = 0.05; t(1) = 0;
y(1) = 0;
N = 1/h;
for i=2:N
    y(i) = y(i-1) + h*(t(i-1)*exp(3*t(i-1))-2*y(i-1));
    t(i) = i*h;
end    
y

plot(t,y,'r-')
xlabel('t','FontSize',14);
ylabel('y(t)','FontSize',14);
clc;
clear;
h = 0.025;
a = 2;
b = 3;
N = (b - a) / h;
w = zeros(1, N);
t = zeros(1, N);
t(1) = a;
w(1) = 2; % Initial value of y

for i = 2:N
    w(i) = w(i-1) + h * (-w(i-1) + t(i-1) * sqrt(w(i-1)));
    t(i) = a + i * h;
end

plot([a, t], [2, w], 'b-')
xlabel('t')
ylabel('y(t)')
title("Solution of y' = -y + t*y^(1/2), y(2) = 2")

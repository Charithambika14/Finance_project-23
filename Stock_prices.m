clc;
clear;
T = 1;
N = 100;
MC = 2^3;
dt = T/N;
X(1) = 1;
mu = 1;
sig = 0.1;
S(1) = 1;
SX = zeros(1,N+1);
for k = 1:MC
  for n=2:N+1 
      dW = sqrt(dt)*randn;
      X(n) = X(n-1) + (dt*mu*X(n-1))+ (sig*dW*X(n-1));
      SX(n) = SX(n) + X(n);
  end
  t = 0:dt:T;
  plot(t,X,"-")
  hold on
end
S = SX./MC
plot(t,S,"LineWidth",4) % straight line of zero
hold off

% E(W(t)) = 0, for particular t 
EX = SX/MC
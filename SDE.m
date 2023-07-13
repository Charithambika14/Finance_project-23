% browian motion plot
T = 1;
N = 500;
h = (T-0)/N;
dW = sqrt(h)*randn(1,N);
W = cumsum(dW);
t = [0:h:T];
plot(t,[0 W],'b-')
xlabel('t','FontSize',14);
ylabel('W(t)','FontSize',14);

T = 1;
N = 500;
h = (T-0)/N;
% monte carlo
MC = 5;
for k=1:MC
   dW = sqrt(h)*randn(1,N);
   W = cumsum(dW);
   t = [0:h:T];
   plot(t,[0 W],'b-'), hold on
end   
xlabel('t','FontSize',14);
ylabel('W(t)','FontSize',14);
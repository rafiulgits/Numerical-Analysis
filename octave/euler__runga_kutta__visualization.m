% require euler_method
% require runga_kutta_method_4rth_order

f = @(x,y) x+y;
xr = [0,1];
y0 = 1;
h = 0.1;

euler_ans = euler_method(f,xr,y0,h);
runga_kutta_ans = runga_kutta_method_4rth_order(f,xr,y0,h);

subplot(2,2,1);
plot(euler_ans(:,1),euler_ans(:,2),'b');
legend('euler');

subplot(2,2,2);
plot(runga_kutta_ans(:,1),runga_kutta_ans(:,2),'g');
legend('runga kutta')

subplot(2,2,[3,4]);
plot(euler_ans(:,1),euler_ans(:,2),'g',
      runga_kutta_ans(:,1),runga_kutta_ans(:,2),'b');
legend('euler', 'runga kutta');
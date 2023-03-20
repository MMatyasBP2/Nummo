g = @(x) cos(x);

x = -1:0.01:1;
plot(x,x,'k',x,g(x),'r')
xlabel('x')
ylabel('g(x)')
legend('y = x','y = g(x)')

x0 = 0.5;
N = 100;
x = zeros(1,N+1);
x(1) = x0;
for n = 1:N
    x(n+1) = g(x(n));
end

figure
for n = 1:N+1
    plot(x(1:n),'b')
    xlim([0 N+1])
    ylim([min(x) max(x)])
    xlabel('Iteráció száma')
    ylabel('x')
    title(sprintf('Iteráció %d',n-1))
    drawnow
    pause(0.1)
end

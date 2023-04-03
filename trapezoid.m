function [approx, error] = trapezoid(f, a, b, n)
    h = (b - a) / n;
    approx = (f(a) + f(b)) / 2;
    for i = 1 : (n - 1)
        approx = approx + f (a + i * h);
    end
    approx = approx * h;

    second_derivative = diff(diff(f));
    max_second_derivative = max(abs(second_derivative(a : b)));
    error = ((b - a)^3 / (12 * n^2)) * max_second_derivative;
end

f = exp(-x.^2);
a = -1
b = 1
n = 10

[approx, error] = trapezoid(f, a, b, n)
disp('Int: ' + approx);
disp('Error: ' + error);

A = [-2 1 0; 2 -6 3; -1 0 2];
 
b = [4; 5; 8];
 
tol = 1e-6;
 
max_iter = 1000;
 
x0 = [1; 1; 1];
 
x = x0;
iter = 0;
while iter < max_iter
    x_old = x;
    for i = 1:length(x)
        sigma = 0;
        for j = 1:length(x)
            if j ~= i
                sigma = sigma + A(i,j) * x_old(j);
            end
        end
        x(i) = (b(i) - sigma) / A(i,i);
    end
    iter = iter + 1;
    if norm(x - x_old) < tol
        break
    end
end
fprintf('Jacobi iteráció eredménye: %s\n', num2str(x'))
fprintf('Iterációk száma: %d\n\n', iter)
 
x = x0;
iter = 0;
while iter < max_iter
    x_old = x;
    for i = 1:length(x)
        sigma1 = 0;
        sigma2 = 0;
        for j = 1:i-1
            sigma1 = sigma1 + A(i,j) * x(j);
        end
        for j = i+1:length(x)
            sigma2 = sigma2 + A(i,j) * x_old(j);
        end
        x(i) = (b(i) - sigma1 - sigma2) / A(i,i);
    end
    iter = iter + 1;
    if norm(x - x_old) < tol
        break
    end
end
fprintf('Gauss-Seidel iteráció eredménye: %s\n', num2str(x'))
fprintf('Iterációk száma: %d\n', iter)
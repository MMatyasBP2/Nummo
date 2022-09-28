a = [3,4,8;4,5,-2];
b = [-2,8,9;3,6,0;3,7,-15];
[m,n] = size(a);
[k,n] = size(b);
c = zeros(m,n);

for i = 1 : m
    for j = 1 : n
        for t = 1 : k
            c(i,j) = c(i,j) + a(i,t) * b(t,j);
        end
    end
end
a
b
c
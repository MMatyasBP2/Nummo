%Egyes norma

x = [4;3;2];
s = 0;
[n,m] = size(x);

for i = 1 : n
    s = s + abs(x(i));
end
s

%Végtelen norma

x = [-2;4;3];
[n,m] = size(x);
s = 0;

for i = 1 : n
    s = max( abs(x) );
end
s

%Kettes norma

x = [7;-5;8]
[n,m] = size(x);
s = 0;
for i = 1 : n
    s = s + x(i)^2;
end
sqrt(s);
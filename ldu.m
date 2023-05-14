% Bekérjük a felhasználótól az n értéket
n = input('Adja meg az n értékét: ');

% Ellenõrizzük, hogy az n pozitív egész-e
if ~isscalar(n) || n < 1 || rem(n, 1) ~= 0
    error('Az n értéknek pozitív egész számnak kell lennie.')
end

% Mátrix és vektor bekérése
A = zeros(n, n);
b = zeros(n, 1);

fprintf('Adja meg az A mátrix értékeit:\n');
for i = 1:n
    for j = 1:n
        A(i, j) = input(sprintf('A(%d,%d) = ', i, j));
    end
end

fprintf('Adja meg a b vektor értékeit:\n');
for i = 1:n
    b(i) = input(sprintf('b(%d) = ', i));
end

% LU felbontás
[L, U, P] = lu(A);

% Az L mátrix diagonálisának kiválasztása
D = diag(diag(U));

% Az U mátrix frissítése a diagonális eltávolításával
U = inv(D)*U;

% Az L mátrix frissítése a D-vel való szorzással
L = L*D;

% Az eredmények megjelenítése
disp('Az L mátrix:');
disp(L);

disp('Az D mátrix:');
disp(D);

disp('Az U mátrix:');
disp(U);
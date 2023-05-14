% MATLAB kód: Inga módszer alkalmazhatóságának ellenõrzése

% Pozitív egész szám bekérése
x = input('Adjon meg egy pozitív egész számot (x): ');

% A mátrix és b vektor bekérése
fprintf('Adja meg az A mátrixot (n x m):\n');
A = zeros(x);
for i = 1:x
    A(i, :) = input('');
end

fprintf('Adja meg a b vektort (n):\n');
b = zeros(x, 1);
for i = 1:x
    b(i) = input('');
end

% Diagonálisan domináns-e az A mátrix
diagonalDominant = true;
for i = 1:x
    rowSum = 0;
    for j = 1:x
        if i ~= j
            rowSum = rowSum + abs(A(i, j));
        end
    end
    if abs(A(i, i)) <= rowSum
        diagonalDominant = false;
        break;
    end
end

% Eredmény kiírása
if diagonalDominant
    disp('Az inga módszer alkalmazható.');
else
    disp('Az inga módszer nem alkalmazható.');
end

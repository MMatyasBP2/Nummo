s = 1
for i = 1:4999
    s=s+1/(i^2+i);
end
format long e
s

t = 0
for i = 4999:-1:1
    t=t+1/(i^2+i);
end
t = t+1
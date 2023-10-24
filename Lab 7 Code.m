% Simpson Rule (Lab 7)
a = 4
b = 5.2
n = 6
h = (b-a)/n

for i = 0:n
    X(i+1) = a+i*h;
end
X
Y = log(X)
ans = Y(1) + Y(n+1);
for i = 2:2:n
    ans = ans+(4*Y(i));
end

for i = 3:2:n
    ans = ans+(2*Y(i));
end

ans = (h/3) * ans
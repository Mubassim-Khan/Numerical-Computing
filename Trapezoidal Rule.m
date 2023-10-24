% Trapezoidal Rule (Lab 8)
f = inline('1/(1+x^2)');

x0 = input("Enter x0: ");
xn = input("Enter xn: ");
n = input("Enter n: ");
h = (xn-x0)/n;

sum = 0.0;
for i = 1:n-1
    x = x0+i*h;
    sum = sum + f(x);
end

trap = h*(f(x0)+2*sum+f(xn))/2;
fprintf("Integrated value is %f", trap)
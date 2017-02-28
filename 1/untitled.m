f = @(x)(exp(x)-exp(-x))./(2*x);

a=10^(-6);
b=-a;
d=(a-b)/1e5;
c=b:d:a;
plot(c,f(c))
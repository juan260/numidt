n=4;
b=randn(n,1);
A = randn(n) + 2*n*eye(n);
[x, NIt] = Jacobisolve(A, b, 10000, 1e-6);
A*x
b
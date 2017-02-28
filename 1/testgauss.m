N=100;
m=3;

S=20;
   
t= zeros(N,1);

for n = m:N
    for j = 1:S
        A=randn(n);
        
        tic
        [L,U,E] = gaussLU(A);
        t(n)=t(n) + toc/S;
    end
end

%plot(m+2:N, t(m+2:N))


plot(log(m+2:N),log(t(m+2:N)))
grid on
hold on
fplot(@(x) (3*x-4.25)-5, [m+2:N])

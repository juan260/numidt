a = -5;
b = 5;
d=9;
i=1000;
nodos = a:10/d:b;
intervalo = a:10/i:b;
f = @(x) 1./(1+x.^2);
polinomioCalculado = Lagrangepoli(intervalo, nodos, f(nodos));
hold off
plot(intervalo, polinomioCalculado)
hold on
plot(intervalo, f(intervalo))

N = 10;
v = zeros(1, N);
u=zeros(1,N);

% Ahora hallemos los nodos de chebychev y repitamos el proceso.
% Primero los hallamos para el intervalo -1,1 (v) y luego lo extendemos
% con u(i) = b+a/2 + i*(b-a)/2

for i = 1:10
    v(i) = cos((2*i-1)*pi/(2*N));
    u(i)=a+((v(i)+1)/2)*(b-a);
end

figure
polinomioCalculado = Lagrangepoli(intervalo, u, f(u));
hold off
plot(intervalo, polinomioCalculado)
hold on
plot(intervalo, f(intervalo))


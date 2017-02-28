int1 = -4;
int2= 2;
f=@(x) (0.1*x.^5)+(0.3*x.^4)+-(0.2*x.^3)+(0.3*x.^2)+x;
%Hallar TODOS los ceros de la funcion en el intervalo.
fplot(f,[int1, int2])
hold on
fplot(@(x) 0, [int1, int2])
hold off
c= bisec(f, -4, -3, 0.00001);
c= [c, bisec(f, -3, -0.5, 0.00001)];
c= [c, bisec(f, -0.5, 2, 0.000001)];
c

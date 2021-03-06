function [L, U, E] = gaussLU(A)
    U=A;
    [n,m]=size(A);
    if n ~= m
        error('La matriz no es cuadrada')
    end
    L=eye(n);
    for k = 1:n-1
        if U(k,k) == 0 
            error('Error: el elemento %d,%d es 0', k, k)
        end
        for i = k+1:n
           L(i,k) = U(i,k)/U(k,k);
           for j = k:n
               U(i,j)=U(i,j)-L(i,k)*U(k,j);
           end
        end
    end
    
    E=max(max(abs(A - U*L)));
end

function [x, Err] = GaussSeidel(A, B, tol)
    U=zeros(size(A));
    L=zeros(size(A));
    for j = 0 : size(A)
        for k = 0 : size(A)
            if j>k
                L(j,k)=A(j,k);
            elseif j<k
                    U(j,k)=A(j,k);

            end
        end
    end
    x = ones(size(A), 1);
    d=diag(diag(A));
    Err=tol;
    while Err>tol
        x0=x;
        x=inv(d+L)*(b-U*x);
        Err=norm(x-x0);
    end
end
            
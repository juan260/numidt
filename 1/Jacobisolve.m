function [x, NIt] =Jacobisolve(A, b, ItMax, tol)
    d = diag(diag(A));
    NIt=0;
    x0=0;
    sizeA = size(A);
    if(sizeA(1)~=sizeA(2))
        error('La matriz no es cuadrada')
    end
    
%    flag1=0; 
%    for j = (0 : size(A))
%         sum=0;
%         for k = (0 : size(A))
%             if not(j == k)
%                 sum = sum + abs(A(j, k));
%             end
%         end
%         if(abs(A(j,j))<sum)
%             fprintf('Error');
%             flag1 = 1;
%         end
%     end

    v=sum(abs(A'));
    condition=v<abs(2*diag(A))';

    if not(all(condition))==0
        dinv = eye(sizeA);
        for j = (1 : sizeA)
            if not(d(j,j)==0)
                dinv(j, j) = 1/d(j, j);
            else 
                error('Division por 0');
            end
            x = randn(sizeA(1),1);
            while(abs(norm(x0-x))>tol && NIt<ItMax)
                x0 = x;
                x = dinv * ((d-A) * x + b);
                NIt=ItMax+1;
            end
        end
    end

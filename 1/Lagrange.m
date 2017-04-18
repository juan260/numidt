function p = Lagrange(x, v, y)
    s = size(x);
    if(s(1)<s(2))
        x = x';
    end
    L = caracteristicLagrange(x, v);
    s = size(L);
    p = zeros(s(1), 1);
%     for k = 1 : s
%         for i = 1 : size(v)
%             p(k) = p(k) + (y(i)*L(k, i));
%         end
%     end
% Todo eso se puede sustituir por:
    p = L * y;
end
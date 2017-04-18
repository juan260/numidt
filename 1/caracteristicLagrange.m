function L = caracteristicLagrange(x, v)
    s = size(v);
    L = zeros(s);
    for i = 1 : s(1)
        aux = ones(size(x));
        for j = 1 : s(1)
            if not(j==i)
                for k = 1 : size(x)
                    aux(k) = aux(k) .* ((x(k)-v(j))./(v(i)-v(j)));
                end
            end
        end
        for k = 1 : size(x)
            L(k, i) = aux(k);
        end
    end
end
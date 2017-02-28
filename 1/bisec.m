
function [c, Nit, R] = bisec(f, a, b, t)
    if(f(a)*f(b)>0)
        error('Error de inputs')
    end
    if(a>b)
        aux=a;
        a=b;
        b=aux;
    end
    Nit=0;
    while(abs(a-b)>t&&abs(f(a)-f(b))>t)
        Nit=Nit+1;
        c=(a+b)/2;
        if(abs(f(c))<t)
            R=f(c);
            return
        end
   
        if (f(a)*f(c)<0)
            b=c;
        else
            a=c;
        end
    end
    R=f(c);
end


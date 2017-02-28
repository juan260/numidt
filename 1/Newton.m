function [x, y, i] = Newton(f, df, x, t1, t2, Nmax)
    E1=t1+1;
    E2=t2+1;
    i=0;
    while(i<Nmax&&f(x)&&E1<t1&&E2<t2)
        y=x;
        x=x-(f(x)./df(x)); 
        i=i+1;
        
        E1=abs(x-y);
        E2=abs(f(x));
    end
    y=f(x);
end
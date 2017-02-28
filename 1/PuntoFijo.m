function [x, ret] = PuntoFijo(x, tol, g, itMax, c)
    i=0;
    
    while(i<itMax && abs(g(x))>tol && abs(x-c)>tol)
        
        x=g(x); 
        i=i+1;
    end
    
    ret=g(x);
end
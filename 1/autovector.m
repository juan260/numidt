%%%%%%%%%%%%%%
%            %
%    Mal     %
%    :)      %
%            %
%%%%%%%%%%%%%%


function [u, x, z, i]=autovector(T, maxIt, Err)
u=randn(3,1);
i=0;
l=0;
er=Err+1;
while((i<maxIt)&& er<Err)
    u=(T*u)/norm(T*u);
    v=u;
    a=((T*u)./u);
    l=a(1);
    er=norm(v-u);
    i=i+1;
end
x=T*u;
z=l*u;
end



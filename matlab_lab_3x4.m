%{
clc;
clear all;

f=@(x) (x^3 + (4*(x^2))-10) ;
e=0.001;
p0=1;
g=@(x) (x - x.^3 - (4*x.^2)+10);
p1=g(p0);
while(abs(p1-p0)>e)
    p2=g(p1);
     p0=p1;
     p1=p2;
end

disp(p1)
%}
%{
clc;
clear all;

f=@(x) (x^3 + (4*(x^2))-10) ;
e=0.001;
p0=1;
g=@(x) sqrt((10/x)-(4*x));
p1=g(p0);
while(abs(p1-p0)>e)
    p2=g(p1);
     p0=p1;
     p1=p2;
end

disp(p1)
%}

%{
clc;
clear all;

f=@(x) (x^3 + (4*(x^2))-10) ;
e=0.001;
p0=1;
g=@(x) 0.5*sqrt(10-(x^3));
p1=g(p0);
while(abs(p1-p0)>e)
    p2=g(p1);
     p0=p1;
     p1=p2;
end

disp(p1)
%}

%{
clc;
clear all;

f=@(x) (x^3 + (4*(x^2))-10) ;
e=0.001;
p0=1;
g=@(x) sqrt(10/(4+.x));
p1=g(p0);
while(abs(p1-p0)>e)
    p2=g(p1);
     p0=p1;
     p1=p2;
end

disp(p1)
%}

%{
clc;
clear all;

f=@(x) (x^3 + (4*(x^2))-10) ;
e=0.001;
p0=1;
g=@(x) x-(f(x)/ ( (3*x^2) + (8*x)));
p1=g(p0);
while(abs(p1-p0)>e)
    p2=g(p1);
     p0=p1;
     p1=p2;
end

disp(p1)
%}
clc;
clear all;

f=@(x) (cos(x)-(x*exp(x)) );
e=0.000001;
p0=1;
h=@(x)  -sin(x) -(exp(x)+(x*exp(x)));
g=@(x)  x- (f(x)/h(x));
p1=g(p0);
while(abs(p0-p1)>e)
     p0=p1;
     p1=g(p0);
    
     
end

disp(p1)
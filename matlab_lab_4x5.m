
clc;
clear all;
syms x;
f= (x- 2*sin(x));
e=0.001;
p0=5;
h= diff(f);
g= x - (f/h) ;
p1=subs(g,p0);
while(abs(p1-p0)>e)
     p0=p1;
    p1=subs(g,p0);
end

vpa(p1)


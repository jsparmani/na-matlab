
clc;
clear all;
syms x;
f= (4*x^2)- exp(x) - exp(-x);
e=0.00001;
p0=5;
h= diff(f);
g= x - (f/h) ;
p1=subs(g,p0);
while(abs(p1-p0)>e)
     p0=p1;
    p1=subs(g,p0);
end

vpa(p1)


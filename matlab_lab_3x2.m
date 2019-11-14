clc;
clear all;

f=@(x)(cos(x)-0.5 - sin(x));
e=0.001;
a=-1;
g=@(x)(x-(f(x) / ((-sin(x)-cos(x))-4)));
r=g(a);
while(abs(r-a)>e)
    z=g(r);
     a=r;
     r=z;
     
end

disp(r)
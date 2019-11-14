clc;
clear all;

f=@(x)((2*sin(pi*x))+(x));
e=0.01;
p0=1;
g=@(x) (x-(f(x) / ((2*pi*cos(pi*x))+1)));
p1=g(p0);
while(abs(p1-p0)>e)
    p2=g(p1);
     p0=p1;
     p1=p2;
end

disp(p1)
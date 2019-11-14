clc;
clear all;

f=@(x)(tan(x)-(4*x));
e=0.001;
p0=4.7; //Second Smalestt No
g=@(x) (x-(f(x) / ((sec(x)*sec(x))-4)));
p1=g(p0);
while(abs(p1-p0)>e)
    p2=g(p1);
     p0=p1;
     p1=p2;
end

disp(p1)
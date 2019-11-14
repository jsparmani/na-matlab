clc;
clear all;

f=@(x) ((x.^2) - 17 );
e=0.001;
p0=4;
p1=5;
g=@(x,y) y -(((y-x)/(f(y)-f(x)))*f(x));
p2=g(p0,p1);
while(abs(p2-p1)>e)
     p0=p1;
     p1=p2;
     p2=g(p0,p1);
     
end

disp(p0)


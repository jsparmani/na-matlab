clc;
clear all;
f=@(s,t) -o.6*pi*r;
a=0;
b=1;
h=0.2;
n=(b-a)/h;
y= zeros(n+1,1);

y(1)=1;

for i=2: n+1
    x= a + ((i-2)*h);
    k1 = h* f(x,y(i-1));
    k2 = h* f(x+(h/2) , y(i-1) + (k1/2));
    k3 = h* f(x+(h/2) , y(i-1) + (k2/2));
    k4 = h* f(x+h , y(i-1) + k3);
    y(i) = y(i-1) + ((h* (k1+ (2*k2)+(2*k3) +k4))/6);
end

disp(y);
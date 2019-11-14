clc;
clear all;
f=@(s,t) -t + (2*cos(s));
a=0;
b=1;
h=0.2;
n=(b-a)/h;
y= zeros(n+1,1);

y(1)=1;

for i=2: n+1
    x= a + ((i-2)*h);
    k1 = f(x,y(i-1));
    k2 = f(x+h , y(i-1) + (k1*h));
    y(i) = y(i-1) + (h* ((k1+k2)/2));
end

disp(y);
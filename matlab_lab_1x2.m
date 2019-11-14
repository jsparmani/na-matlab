clc;
clear all;
x=[-100:5:100];
f=@(x)x.^2;
f(25)
for i=1:5
    disp(f(i))
end
b=6;
a=1;
c=5;
d=f(b)-(4*a*c);
if(d>=0)
    disp('roots are real')
else
     disp('roots are imaginary')
end

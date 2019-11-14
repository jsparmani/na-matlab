clc;
clear all;
x=[0 0.25 0.5 0.75];
y=[1 1.64872 2.71828 4.48169];
[m, n ]= size(x);
[a, b ]= size(y);
x0 = 0.43;
sum=0;


for i=1: n
    product=1;
    for j=1: n
        if (j ~= i)
            z= (x0-x(j))/(x(i)-x(j));
            product =product* z;     
        end
    end
    sum=sum+ (product*y(i));
end

disp(sum);         

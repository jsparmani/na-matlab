clc;
clear all;
x=[1950 1960 1970 1980 1990 2000];
y=[151326 179323 203302 226542 249633 281422];
[m, n ]= size(x);
[a, b ]= size(y);
x0 = 1965;
x1 = 1975;
x2 = 1995;
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
disp(sum)
sum=0;

for i=1: n
    product=1;
    for j=1: n
        if (j ~= i)
            z= (x1-x(j))/(x(i)-x(j));
            product =product* z;     
        end
    end
    sum=sum+ (product*y(i));
end
disp(sum)
sum=0;

for i=1: n
    product=1;
    for j=1: n
        if (j ~= i)
            z= (x2-x(j))/(x(i)-x(j));
            product =product* z;     
        end
    end
    sum=sum+ (product*y(i));
end

disp(sum);         

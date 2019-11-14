clc;
clear all;
A=[4.63, -1.21,  3.22 ; -3.07, 5.48, 2.11; 1.26, 3.11, 4.57];
b= [2.22, -3.17 , 5.11];
n= 3;
x0=zeros(n,1);
x=zeros(n,1);
tol = 0.001;
k=1;
d=1;
while(d>tol)
    for i= 1 : n
        part1=0;
        part2=0;
        for j=1: i-1
            part1 = part1 + (A(i,j) * x(j,1));
        end
        for j=i+1: n
            part2 = part2 + (A(i,j) * x0(j,1));
        end
        x(i,1) = ((-1*part1)+ (-1*part2) + b(i))/A(i,i);
    end
    d= norm(x-x0);
    x0= x;
end

disp(x);

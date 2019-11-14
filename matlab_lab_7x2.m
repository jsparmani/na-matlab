clc;
clear all;
A=[4 1 -1 1 ;1 4 -1 -1 ; -1 -1 5 1;1 -1 1 3];
b= [-2 -1 0 1];
n= 4;
x0=zeros(n,1);
x=zeros(n,1);
tol = 0.001;
w=1.2;
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
        x(i,1) = (1-w)*x0(i,1) + ((((-1*part1)+ (-1*part2) + b(i))*w)/A(i,i));
    end
    d= norm(x-x0);
    x0= x;
end

disp(x);

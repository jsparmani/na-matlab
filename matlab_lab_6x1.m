clc;
clear all;
a=[1/3 1/2 -1/4; 1/5 2/3 3/8; 2/3 -2/3 5/8];
l= diag([1 1 1]);
[m, n ]= size(a);
disp(a)
for i= 1 : m-1
    for j= i+1 : m
        b=a(j,i)/a(i,i);
        a(j,:)= a(j,:) - b*a(i,:);
        l(j,i)=b;
    end
end

disp(a)
disp(l);
l= l*a;
disp(l);


      
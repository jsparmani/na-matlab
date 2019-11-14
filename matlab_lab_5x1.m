clc;
clear all;
a=[ 10 8 -3 1 16; 2 10 1 -4 9; 3 -4 10 1 10 ; 2 2 -3 10 11 ];

[m, n ]= size(a);
disp(a)
for i= 1 : m-1
    for j= i+1 : m
        a(j,:)= a(j,:) - (a(j,i)/a(i,i))*a(i,:);
    end
end

disp(a);
b = zeros(m,1);
for i=m:-1: 1
    sum=0;
    for j=m:-1 : i+1
        sum= sum + a(i,j)*b(j,1);
    end
    disp(a(i,n))
    b(i,1) = (a(i, n) - sum)/ a(i,i);
    disp(b);
end
        
            
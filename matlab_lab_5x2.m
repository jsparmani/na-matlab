clc;
clear all;
a=[ pi sqrt(2) -1 1 0; exp(1) -1 1 2 1;1 1 -sqrt(3) 1 2 ; -1 -1 1 -1*sqrt(5) 3 ];

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
        
            
clc;
clear all;
x = [1; 1.5; 2; 2.5];
f = [2.7183;4.4817; 7.3891; 12.1825];
[m, n ]= size(x);
a =zeros(m);
a(:,1)= f;
 disp(a)
 for i=2: m
     for j=i: m
         a(j,i)=(a(j,i-1)-a(j-1,i-1))/(x(j)-x(j-i+1));
     end
 end
 
disp(a);

x0 = 2.25;
sum=0;
for i=1: m
    p=1;
    for j=1: i-1
         p= p*(x0-x(j));
    end
    sum=sum+(a(i,i)*p);
end
 
 disp(sum);
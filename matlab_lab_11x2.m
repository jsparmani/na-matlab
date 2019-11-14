clc;
clear all;
x = [0; 0.25; 0.5; 0.75];
f = [1;1.64872; 2.71828; 4.4816];
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

x0 = 0.43;
sum=0;
for i=1: m
    p=1;
    for j=1: i-1
         p= p*(x0-x(j));
    end
    sum=sum+(a(i,i)*p);
end
 
 disp(sum);
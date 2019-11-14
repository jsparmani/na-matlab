clc;
clear all;
A=[1 1 0 0; 1 2 0 1; 0 0 3 3; 0 1 2 3];
[m, n ]= size(A);
x0 = [1; 1; 0; 1];
e=0.001;
k0= max(abs(x0));
k1=2;
a=0;
while (abs(k1-k0)>e)
    a= a+1;
    y=A*x0;
    k1= max(abs(y));
    x0= y*(1/k1);
    if(a>3)
        break;
    end
    fprintf('For iteration %d \n\n',a)
    disp(k1);
    disp(y);
end

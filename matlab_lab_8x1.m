clc;
clear all;
A=[4,1,0; 1, 20, 1; 0, 1, 4];
[m, n ]= size(A);
x0 = [1; 1; 1];
e=0.001;
k0=1;
k1=2;

while (abs(k1-k0)>e)
    k0=k1;
    y=A*x0;
    k1= max(y);
    x0= y*(1/k1);
end
e_vector = y/k1;
disp(k1);
disp(e_vector);
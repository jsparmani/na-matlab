clc;
clear all;
N=4;
a=-1; b=1;
f = @(x) exp(-x^2)*cos(x);
 h = (b-a)/N;
    sum = 0;
    for i = 1:N-1
        x = a+(h*i);
        sum = sum + (2*f(x));
    end
    sum = sum +f(a)+f(b);
    ans = sum*(h/2);
    
    disp('for n =4');
    disp(ans);
    
    N=6;
a=-1; b=1;
f = @(x) exp(-x^2)*cos(x);
 h = (b-a)/N;
    sum = 0;
    for i = 1:N-1
        x = a+(h*i);
        sum = sum + (2*f(x));
    end
    sum = sum +f(a)+f(b);
    ans = sum*(h/2);
    
    disp('for n =6');
    disp(ans);
    
    
    N=10;
a=-1; b=1;
f = @(x) exp(-x^2)*cos(x);
 h = (b-a)/N;
    sum = 0;
    for i = 1:N-1
        x = a+(h*i);
        sum = sum + (2*f(x));
    end
    sum = sum +f(a)+f(b);
    ans = sum*(h/2);
    
    disp('for n =10');
    disp(ans);
    
    
    N=20;
f = @(x) exp(-x^2)*cos(x);
 h = (b-a)/N;
    sum = 0;
    for i = 1:N-1
        x = a+(h*i);
        sum = sum + (2*f(x));
    end
    sum = sum +f(a)+f(b);
    ans = sum*(h/2);
    
    disp('for n =20');
    disp(ans);
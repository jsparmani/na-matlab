
clc;
clear all;
N=4;
a=0; b=2;
f = @(x) sqrt(1 + ( (2*x)/( (1+ x^2)^2 +1 ))^2);
 h = (b-a)/N;
    sum = 0;
    for i = 1:N-1
        if(mod(i,2)==0)
            x = a+(h*i);
            sum = sum + (2*f(x));
        else
            x = a+(h*i);
            sum = sum + (4*f(x));
        end
    end
    sum = sum +f(a)+f(b);
    ans = sum*(h/3);
    
    disp('for simpson n =4');
    disp(ans);
  
N=8;
a=0; b=2;
f = @(x) sqrt(1 + ( (2*x)/( (1+ x^2)^2 +1 ))^2);
h = (b-a)/N;
    sum = 0;
    for i = 1:N-1
        if(mod(i,2)==0)
            x = a+(h*i);
            sum = sum + (2*f(x));
        else
            x = a+(h*i);
            sum = sum + (4*f(x));
        end
    end
    sum = sum +f(a)+f(b);
    ans = sum*(h/3);
    
    disp('for simpson n =8');
    disp(ans);
    
N=4;
a=0; b=2;
f = @(x) sqrt(1 + ( (2*x)/( (1+ x^2)^2 +1 ))^2);
 h = (b-a)/N;
    sum = 0;
    for i = 1:N-1
        x = a+(h*i);
        sum = sum + (2*f(x));
    end
    sum = sum +f(a)+f(b);
    ans = sum*(h/2);
    
    disp('for trapezoid n =4');
    disp(ans);
    
N=8;
a=0; b=2;
f = @(x) sqrt(1 + ( (2*x)/( (1+ x^2)^2 +1 ))^2);
 h = (b-a)/N;
    sum = 0;
    for i = 1:N-1
        x = a+(h*i);
        sum = sum + (2*f(x));
    end
    sum = sum +f(a)+f(b);
    ans = sum*(h/2);
    
    disp('for trapezoid n =8');
    disp(ans);
    

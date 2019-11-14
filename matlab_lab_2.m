clc;
clear all;

f=@(x)(x.^2 - (29));
e=10^-3;
a=5;
b=6;

while( abs(b-a)> e)
       c=((b+a)/2);
       if ( f(c)==0);
          
           break;
       elseif( (f(a)*f(c))<0)
                 b=c ; 
               
        else
                a=c;
       end
end
disp(c)

    

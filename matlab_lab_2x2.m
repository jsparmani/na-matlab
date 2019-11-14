
clc;
clear all;

f=@(x)(0.5- cos(x)+ sin(x));
e=0.001;
a=0;
b=(0.5*pi);

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

    

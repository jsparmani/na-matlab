x=input('Number of iterations: ');
div=0;
o=0;
e=0;
for i=1:x
if rem(i,2)==0
    e=e+1;
else
    o=o+1;
end
if rem(i,15)==0
    div=div+1;
end
end
display(o,'odd: ')
display(e,'even: ')
display(div,'divisibleby 3&5: ')
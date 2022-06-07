clc
f=inline('(e^(-x))-x');
d=0.01
b=1
error=0.05;

ea=100;
j=0;

while ea>error
  xi=b-((d*b)*f(b))/(f(b+d*b)-f(b)));
  ea=abs(((xi-b)/xi)*100);
  b=xi;
  j=j+1;
end

fprintf('\nRaiz= %f en %d Iteraciones',b,j)
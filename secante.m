clc
f=inline('(e^(-x))-x');
a=0
b=1
error=0.05;

ea=100;
j=0;

while ea>error
  xi=b-((f(b)*(a-b))/(f(a)-f(b)));
  ea=abs(((xi-b)/xi)*100);
  b=xi;
  j=j+1;
end

fprintf('\nRaiz= %f en %d Iteraciones',b,j)
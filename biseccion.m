#Método de la bisección
clc
n=0 
a=0
b=3
c=(a+b)/2


for n=1:50
  if  (a^2-2)*(c^2-2)== 0 
      a = c;
      b = c;
      fprintf('Se ha alcanzado el cero exacto \n');
    elseif
      (a^2-2)*(c^2-2)<0 
      b=c
    else
      a=c
    endif
    c = (a+b)/2
    (c^2-2)
  
endfor


x=[1 1.3 1.6 1.9 2.2];
y=[0.7651 0.6200 0.4554 0.2818 0.1103];

xa=x;ya=y;


d=zeros(length(y));

%zeros(n) genera una matriz de nxn con todos sus valores iguales a cero, en este caso utiliza el largo del arreglo y

d(:,1)=y';

%Se asigna valor de y’ a la columna de la matriz creada anteriormente

for k=2:length(x)

for j=1:length(x)+1-k

d(j,k)=(d(j+1,k-1)-d(j,k-1))/(x(j+k-1)-x(j));

end

end

for w=1:length(x)

ds=num2str(abs(d(1,w)));


if w>1



if x(w-1)<0

%si la multiplicación de x por (w-1)es menor a cero, se agrega un símbolo “+” al polinomio de resultado.

sg1='+';

else

%en caso contrario, el símbolo matemático es “-“.

sg1='-';

end

end

if d(1,w)<0

sg2='-';

else

sg2='+';

end

if w==1

acum=num2str(d(1,1));

%se crea un contador de nombre “acum” que irá almacenando el polinomio obtenido, y lo mostrará el final del codigo

elseif w==2

polinact=['(x' sg1 num2str(abs(x(w-1))) ')' ];

actual=[ds '*' polinact];

acum=[acum sg2 actual];

else

polinact=[polinact '.*' '(x' sg1 num2str(abs(x(w-1))) ')' ];

actual=[ds '*' polinact];

acum=[acum sg2 actual];

end

end


fprintf('los valores de X e Y son');

disp(xa);

disp(ya);


fprintf('El polinomio interpolación Newton obtenido es: %s ',acum);
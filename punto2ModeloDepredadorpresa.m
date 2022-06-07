#MODELO DEPREDADOR – PRESA
#Brandon Daniel Diaz - 730446
#Johan Sebastian Cañon - 730450
#Sebastian Camilo Romero - 732124

clc
tN=100;
N=10000;t0=0;h=(tN-t0)/N;
a=0.8;b=0.4;c=0.2;d=0.002; 
R(1)=400; F(1)=8;
  
for i = 1:N       
    %Cálculo de las Ctes k1-k4.    
    k1=[a*R(i)-c*F(i)*R(i), -b*F(i)+d*F(i)*R(i)];    
    k2=[a*(R(i)+h*k1(1)/2)-c*(F(i)+h*k1(2)/2)*(R(i)+h*k1(1)/2), -b*(F(i)+h*k1(2)/2)+d*(F(i)+h*k1(2)/2)*(R(i)+h*k1(1)/2)];    
    k3=[a*(R(i)+h*k2(1)/2)-c*(F(i)+h*k2(2)/2)*(R(i)+h*k2(1)/2), -b*(F(i)+h*k2(2)/2)+d*(F(i)+h*k2(2)/2)*(R(i)+h*k2(1)/2)];    
    k4=[a*(R(i)+h*k3(1))-c*(F(i)+h*k3(2))*(R(i)+h*k3(1)), -b*(F(i)+h*k3(2))+d*(F(i)+h*k3(2))*(R(i)+h*k3(1))];    
   %Cálculo del próximo valor de R, F.    
    R(i+1)=R(i)+h*(k1(1)+2*k2(1)+2*k3(1)+k4(1))/6;    
    F(i+1)=F(i)+h*(k1(2)+2*k2(2)+2*k3(2)+k4(2))/6;
end;
T=t0:h:tN; 

%Gráfica de la solución.
hold on
figure(1)
plot(T,R,'r')
plot(T,F,'g')

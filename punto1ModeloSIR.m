#Metodo de SIR
#Brandon Daniel Diaz - 730446
#Johan Sebastian Cañon - 730450
#Sebastian Camilo Romero - 732124
clc 
m = 50 ;h = 1
x = 0;s= 995;i=5;r=0;
fy=r;
gy=i;
jy=s;
X=x
for n=1:m
  r1=r+(h*((0.6)*(i)))
  i1=i+(h*((-0.6)*(i)+(0.001407)*(s)*(i)))
  s1=s+(h*((-0.001407)*(s)*(i)))
  x=x+h
  X=[X,x];
  fy=[fy,r1];
  #gx=[gx,x];
  gy=[gy,i1];
  #jx=[jx,x];
  jy=[jy,s1];
  i=i1;s=s1;r=r1;
end 

   plot(X,fy,'r');
   hold on;
   plot(X,gy,'b');
   hold on;
   plot(X,jy,'g');
            %%% a2Q5

clc;
clear;
g=9.81;
a=.8;
b=6;
z2=.61*a;
i=1;
for z1=5:.25:15
   z(i)=z1;
    Qb(i)=z1*z2*sqrt(2*g/(z1+z2));
     i=i+1;
end

plot(z,Qb)
title('flow depth vs flowrate');
xlabel('z_1');
ylabel('Q_b');
disp('I N T E R P R E T A T I O N:');
disp('The flowrate is not directly proportional to the flow depth');
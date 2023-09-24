            %%% a2Q4

clc;
clear;
syms x y z a p q;
Phi=(a*x^3)/3 - a*x*y^2 - 2; %velocity potential

%finding the velocity components from velocity potential
u=diff(Phi,x);
v=diff(Phi,y);

%%% ans to question no a
%plotting some equipotential curves
f1=subs(Phi,a,3);
val=-4:2:4;
fcontour(f1,'LineWidth',2,'LevelList',val);
title('Equipotential curves')

%%% ans to question no b
%finding stream function
s_func=potential([-subs(v), subs(u), 0],[x, y, z]);
disp('The stream function is:');
disp(s_func);

%%% ans to question no c
%plotting stream functions
f2=subs(s_func,a,3);
fcontour(f2, 'LevelList',val);

%indication the direction of flow
s_func=a*x^2*y - (a*y^3)/3;
f=subs(s_func,a,3);
u=diff(f,y);
v=-diff(f,x);
[x,y]=meshgrid(0:10,0:10);
streamslice(x,y,subs(u), subs(v));
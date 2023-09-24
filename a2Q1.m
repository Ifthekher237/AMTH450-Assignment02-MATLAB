            %%% a2Q1

clc;
clear;
syms x y;

%the velocity components of 2D flow
u=(1+y^2);
v=(x-1);

%simplifying (u/v)
[numerator,denominator]=numden(simplify(u/v));

%we know, dx/u = dy/v
y1=int(v,x);
y2=int(u,y);

strm_line=simplify(y1-y2); %equation of the stream line
disp('the equation of the streamline is:')
disp(strm_line)
%plotting streamlines along with the direction of flow
[x,y]=meshgrid(-5:10, -4:10);
streamslice(x,y,subs(u), subs(v))
title('streamlines')
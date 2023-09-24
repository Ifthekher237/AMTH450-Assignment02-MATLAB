%%% a2Q6

clc;
clear;
m=-0.314;
syms x y r t c;
u1=diff((m/2*pi)*log(sqrt(x^2+(y-5)^2)),x);
v1=diff((m/2*pi)*log(sqrt(x^2+(y-5)^2)),y);
u2=diff((m/2*pi)*log(sqrt(x^2+(y+5)^2)),x);
v2=diff((m/2*pi)*log(sqrt(x^2+(y+5)^2)),y);
u=simplify(u1+u2);
v=simplify(v1+v2);
f=int(u,y)-int(v,x)+c;
disp(f);

fpolar=subs(f,{x,y},{r*cos(t),r*sin(t)});

[x, y]=meshgrid([-6:0.5:-0.5 0.5:0.5:6],[-6:0.5:-0.5 0.5:0.5:6]);
ur=subs(u);
vr=subs(v);
figure;
streamslice(x,y,ur,vr);

% the following code does everything except the direction of the sources
% syms x y r t;
% m=-.314;
% F=vpa((m/2*pi)*(log(x+i*y+5i)+log(x+i*y-5i)));
% psi_cart=imag(F);
% disp(psi_cart);
% psi_polar=subs(psi_cart,{x,y},{r*cos(t),r*sin(t)});
% disp(psi_polar);
% 
% grad=gradient(psi_cart,[x,y]);
% u=grad(1);
% v=-grad(2);
% disp(u);
% disp(v);
% 
% fcontour(imag(F),'b',[-10,10],'LevelList',-10:.1:10,'linewidth',1);




            %%% a2Q3

clc;
clear;
syms x y z a;

%Given velocity field
u=a*(x^2 - y^2);
v=-2*a*x*y;

%stream function exists if div(V)=0
div_val=divergence([subs(u), subs(v)],[x,y]);

if div_val==0
    disp('stream function exists');
    %velocity potential
    s_func=potential([-subs(v), subs(u), 0],[x,y, z]);
    disp('The stream function is: ');
    disp(s_func);
else
    disp('stream function does not exist')
end

%velocity potential exists if curl(V)=0
curl_val=curl([subs(u), subs(v), 0],[x,y, z]);

if curl_val==0
    disp('velocity potential exists');
    %stream function
    v_potential=potential([subs(u), subs(v), 0],[x,y, z]);
    
    disp('The velocity potential is: ');
    disp(v_potential);
else
    disp('velocity potential does not exist')
end


%substituting 'a' with a constant value
f1=subs(s_func,a,3);
f2=subs(v_potential,a,3);

%Plotting some representative streamlines and equipotential curves
v=-4:2:4;
fcontour(f1,'LevelList',v) %Set the values at which fcontour draws contours by using the 'LevelList' option.
hold on
fcontour(f2,'b--','LevelList',v)

%interpretation
disp('I N T E R P R E T A T I O N : ')
disp('streamlines and equipotential curves are perpendicular at each point.')


            %%% a2Q2

clc;
clear;
syms x y z

% Given,
V = [x^2/2 - x^3/3, x*(x - 1)*(y + 1), 0];

%%% Ans to question no a
% Is the motion possible?
% A flow is possible(exists) if it satisfies equation of continuity, OR, if
% divergence is zero

disp('Ans to question no a');
result_pos = simplify(divergence([V(1,1), V(1,2), V(1,3)],[x,y,z]));

if result_pos == 0
    disp('possible flow')
else
    disp('not possible flow')
end

%%% Ans to question no b
% Check whether the motion is irrotational or not
% A flow is irrotational if vorticity is equal to zero
disp('Ans to question no b');
result_irr=curl(V,[x,y,z]);

if result_irr == 0
    disp('irrotational flow')
else
    disp('rotational flow')
end

%%% Ans to question no c
% Find the stagnation points (if any)
% At a stagnation point the velocity is zero,
disp('Ans to question no c');
solx=solve(V(1,1)==0 ,x);
soly=solve(V(1,2)==0 ,y);

[X, Y]=meshgrid(unique(solx,'stable'),unique(soly,'stable'));   % if solx=[0 1]' and soly=[2]' then it returns X=[0 1] and Y=[2 2]
disp('stagnation point(s)')
disp([X' Y'])



















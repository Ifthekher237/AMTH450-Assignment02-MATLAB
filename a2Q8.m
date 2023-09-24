                %%% a2Q8

clc;
clear;
n=6120;
factors=factor(n);
uni=unique(factors);
k=length(uni);
for i=1:k
    p(i)=uni(i);
    alpha(i)=length(find(factors==p(i)));
end
tao_n=1;
sigma_n=1;
phi_n=1;
for i=1:k
    tao_n=tao_n*(alpha(i)+1);
    sigma_n=sigma_n*(p(i)^(alpha(i)+1)-1)/(p(i)-1);
    phi_n=phi_n*(1-1/p(i));
end
phi_n=n*phi_n;
fprintf('Tao(%d)=%5.0f\n',n,tao_n)
fprintf('Sigma(%d)=%5.0f\n',n,sigma_n)
fprintf('Phi(%d)=%5.0f\n',n,phi_n)
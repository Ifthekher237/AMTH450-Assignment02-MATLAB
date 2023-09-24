            %%% a2Q7

clc;
clear;
i=1;
fprintf('%8s %8s %15s %8s %15s\n', 'n', 'Mn', 'prime Mn', 'Fn', 'prime Fn')
for n=1:1:9
    Mn=2^n - 1;
    Fn=2^2^n - 1;
    i=i+1;
    if isprime(Mn)
        k1=Mn;
    else
        k1=0;
    end
    
    if isprime(Fn)
        k2=Fn;
    else
        k2=0;
    end

    fprintf('      %2i   %5i       %5i         %5i      %5i\n',n, Mn,k1,Fn,k2)
end
disp(' ');
disp('N.B: Here 0 means the corresponding number is not prime.');

% i showed the result in followings way
% % R=ones(9,5);
% for i=1:9
%     R(i,1)=i;
%     Mn=2^i - 1;
%     R(i,2)=Mn;
%     Fn=2^2^i + 1;
%     R(i,4)=Fn;
%     
%     if isprime(Mn)
%         R(i,3)=Mn;
%         %prime_Mn(k)=Mn(k);
%     else
%         R(i,3)=0;
%         %prime_Mn(k)=0;
%     end
%     
%     if isprime(Fn)
%         R(i,5)=Fn;
%         %prime_Fn(k)=Fn(k);
%     else
%         R(i,5)=0;
%         %prime_Fn(k)=0;
%     end
%     
% end
% variables={'n','Mn','Prime_Mn','Fn','Prime_Fn'};
% T=array2table(R,'VariableNames',variables);
% disp(T)
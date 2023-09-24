                %%% a2Q9

% clc;
% clear;
% n=8;
% if mod(n,2)~=0
%     N=n+1;
% else
%     N=n;
% end
% 
% for k=1:N-1
%         for i=1:N-1
%             j=mod(k-i,N-1); %formula
%             if j==i %if i==j
%                 R(k,i)=N; %i-th team will play N-th team
%                 R(k,N)=i; %automatically N-th team will play i-th
%             elseif j==0
%                 R(k,i)=N-1; %mod 0 means mod N-1
%             else
%                 R(k,i)=j; %if i and j are not equal
%             end
%         end
% end
% R(N-1,N-1)=N; %the 2nd last team always plays with last team in the last round or gets a bye
% R(N-1,N)=N-1; %last team always plays with 2nd last team in the last round
% 
% var_name={'team1';'team2';'team3';'team4';'team5';'team6';'team7';'team8'};
% row_name={'round1';'round2';'round3';'round4';'round5';'round6';'round7'};
% disp('Schedule of a round-robin tournament for 8 teams: ');
% disp(' ');
% disp(array2table(R,'VariableNames',var_name,'RowNames',row_name));

clc;
clear;
n=6;
if mod(n,2)==0
    N=n;
else
    N=n+1;
end

R=zeros(N-1,N-1);

for k=1:N-1
    for i=1:N-1
        j=mod(k-i, N-1); %formula
        if j==0
            j=N-1; %j ? 0 ? N-1(mod N-1)
        end
        
        if j==i
            R(k,i)=N; %i-th team will play N-th team

        elseif j==0
            R(k,i)=N-1; %%mod 0 means mod N-1
            
        else
            R(k,i)=j; %if i and j are not equal, i vs j
            
        end
    end
end
disp(R);

% % use followings to show the output in a table
% var_name={'team1';'team2';'team3';'team4';'team5'};
% row_name={'round1';'round2';'round3';'round4';'round5'};
% disp('Schedule of a round-robin tournament for 8 teams: ');
% disp(' ');
% disp(array2table(R,'VariableNames',var_name,'RowNames',row_name));

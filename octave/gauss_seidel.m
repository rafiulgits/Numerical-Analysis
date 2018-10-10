clc %clear the ternimal
clear %clear variable history 

%% define co-effcient matrix and variable matrix
A = [10 -2 1; -2 10 -2; -2 -5 10]; % co-efficient matrix
B = [5; 26; -7]; % variable matrix

n = length(A) % co-efficient matrix shape

D = diag(diag(A)); %diagonal matrix from A of n*n shape 

Upper = triu(A,1); % upper triangle matrix of A shaped n*n
Lower = tril(A,-1); % lower triangle matrix of A shaped n*n

x0 = zeros(n,1); % initial value
x1 = 1; % first iteration value
xi = x0; % xi for iteration updated value

max_error = 10^-8; % maximum error that will accepted

% itration
while(abs(x1-xi) > max_error)
  x1=-inv(D+Lower)*Upper*x0+inv(D+Lower)*B;
  xi=x0;
  x0=x1;
end

xi
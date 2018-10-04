% input the function from user
prompt = 'f(x)=x^3+sin(x)-2 : '; % prompt display
str_func = input(prompt,'s'); % request user input 
prompt = 'f`(x)=3*x^2+cos(x): '; 
str_func_prime = input(prompt,'s');
% see doc : https://www.mathworks.com/help/matlab/ref/input.html

% construct function from string
str_func = strcat('@(x)',str_func); % concate the function identifier
str_func_prime = strcat('@(x)',str_func_prime);
f = str2func(str_func); % convert the string to function 
f_prime = str2func(str_func_prime);

% input interval
a = input('interval from: ');
b = input('interval to: ');

while(f(a)*f(b)>0)
  disp('interval is not valid');
  a = input('interval from: ');
  b = input('interval to: ');
endwhile

% initial approximate point
x = (a+b)/2;
x1 = x - (f(x)/f_prime(x));

while(abs(x1-x) > 0.00001)
  x = x1;
  x1 = x1-(f(x1)/f_prime(x1));
endwhile

fprintf('approximate root: %f\n',x1);
% input the function from user
prompt = 'f(x)=x^3+sin(x)-2 : '; % prompt display
str_func = input(prompt,'s'); % request user input 
% see doc : https://www.mathworks.com/help/matlab/ref/input.html

% construct function from string
str_func = strcat('@(x)',str_func); % concate the function identifier
f = str2func(str_func); % convert the string to function 

% input interval
a = input('interval from: ');
b = input('interval to: ');

while(f(a)*f(b)>0)
  disp('interval is not valid');
  a = input('interval from: ');
  b = input('interval to: ');
endwhile

% initial mid point
x = (a+b)/2;

while(abs(b-a)>0.0001)
  f_value = f(x);
  if(f_value>0)
    b = x;  
  else 
    a = x;
  endif
  x = (a+b)/2;
endwhile

fprintf('approximate root: %f\n',x);



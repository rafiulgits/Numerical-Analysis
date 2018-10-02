import math

# ##################################################
# Trigonometrical operations to handle radian value
# ##################################################
# set sin functional operation
sin = lambda x : math.sin(math.pi/(180/x))
# set cos functional openration
cos = lambda x : math.cos(math.pi/(180/x))
# set tan functional operation 
tan = lambda x : math.tan(math.pi/(180/x))
# set cot functional operation
cot = lambda x : 1 /tan(x)
# set sec functional operation
sec = lambda x : 1 /cos(x)
# set cosec functional operation
cosec = lambda x : 1 /sin(x)

# set ln or log10 base operation
ln = lambda x: math.log10(x)

# next iteration of x
def next(a, b, equation):
	# set b as x
	x = b
	# evaluate the equation with the value of b
	p = eval(equation)
	# set a as x
	x = a
	# evaluate the equation with the value of a
	q = eval(equation)
	# falsi method said: x = {a*f(b)-b*f(a)}/{f(b)-f(a)}
	return (a*p - b*q)/(p-q)

# driver function
def  main():
	# input the raw equation
	equation = input('f(x): x^2+4*x-2: ')
	# replace python exponent syntax with general
	equation = equation.replace("^","**")
	# input the interval as string
	a, b = input('Interval: ').split()
	# convert the interval as float
	a = float(a)
	b = float(b)
	# iterate initial x
	x = next(a, b, equation)
	# continously check for an defined functional value
	while abs(eval(equation)) > 0.0001:
		# shifting the interval left
		if(eval(equation) > 0) :
			b = x
		# shifting the interval right
		else:
			a = x
		# next iteration
		x = next(a, b, equation)

	# print out the approximate root
	print('approximate root: ',x)

# driver call
if __name__ == "__main__":
	main()
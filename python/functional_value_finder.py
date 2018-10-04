import math

# functional value use degree instead of radian
# make all trigometric funcion that will take defree value
 
# ##################################################
# Trigonometrical operations to handle radian value
# ##################################################
# set sin functional operation
sin = lambda x : math.sin((math.pi/180)*x)
# set cos functional openration
cos = lambda x : math.cos((math.pi/180)*x)
# set tan functional operation 
tan = lambda x : math.tan((math.pi/180)*x)
# set cot functional operation
cot = lambda x : 1 /tan(x)
# set sec functional operation
sec = lambda x : 1 /cos(x)
# set cosec functional operation
cosec = lambda x : 1 /sin(x)

# set ln or log10 base operation
ln = lambda x: math.log10(x)
# driver function
def main():
	# take the equation
	equation = input('Format:[f(x) = x^3 + 2*x^2 - 1]: ')
	# use python supported exponential syntax
	equation = equation.replace("^","**")
	# take x value
	x = float(input('x: '))
	# display the evaluation of the equation
	print(eval(equation))
	# for shell pause
	input('press any key to exit')

# invoke driver function
if __name__ == '__main__':
	main()
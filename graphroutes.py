#euler problem 15 
#graph choices in a square graph

import sys

sidelength = int(sys.argv[1]);

def factorial(n):
	if n == 1:
		return 1

	return n * factorial(n-1)

twonfact = factorial(2*sidelength)
nfact = factorial(sidelength)

routes = twonfact / (nfact*nfact)  #m choose n on pascals triangle

print routes


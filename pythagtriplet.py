#euler problem 9 
#pythagorean triplet

import sys

theNumber = int(sys.argv[1]);

a=1
b=2
c= theNumber-a-b

for i in range(a, theNumber):
	for j in range(i+1, theNumber):
		if j<i: continue
		a=i; b=j; c=theNumber-a-b;
		if (a*a) + (b*b) == c*c:
			print a;
			print b
			print c
			break;



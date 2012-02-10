#euler problem 2 
#sum of even fibonacci numbers

import sys

def fEven(x):
	return x % 2 == 1;

sequence = [1,1]
def generateSequence(maxVal):
	val = 0;
	while val < maxVal:
		val = sequence[-1] + sequence[-2]
		if val > maxVal:
			return
		sequence.append(val)


theNumber = int(sys.argv[1]);

generateSequence(theNumber)

evens = filter(fEven, sequence);
print sum(evens)


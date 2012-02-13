#euler problem 25 
#number of digits in a fibonacci term

import sys
sequence = [1,1]

theNumber = int(sys.argv[1]);

startingNumber = 10 ** (theNumber-1)

termNum = 2;

while True:
	sequence.append(sum(sequence))
	termNum += 1	
	sequence.pop(0)

	if sequence[1] >= startingNumber:
		print sequence[1]
		print termNum
		quit()




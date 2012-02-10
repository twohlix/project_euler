#euler problem 5 
#smallest multiple

import sys

theNumber = int(sys.argv[1]);

numbers = range(theNumber, 1, -1)

cur = theNumber;
curCompare = numbers[1];
exit = 0;
exitReally = 1;
while exit != exitReally:
	for curCompare in numbers:
		while cur % curCompare != 0:
			cur += theNumber
	exit = exitReally
	exitReally = cur

print cur				

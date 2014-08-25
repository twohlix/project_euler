#euler problem 4 
#palindrome numbers

import sys



def isPalindrome( x ):
	theStr = str(x);
	
	for i in range(0, len(theStr)/2):
		if theStr[i] != theStr[len(theStr)-1-i]:
			return False	
	return True


theNumber = int(sys.argv[1]);

maxN = 10
minN = 1
for i in range(1, theNumber):
	maxN *= 10
 	minN *= 10	
maxN -= 1


def optimizedCheck(minN, maxN):
	range_list = range(maxN, minN, -1)
	count = 0
	candidates = []
	for i in range_list:
		for j in range_list:
			count += 1
			if isPalindrome( i*j ):
				candidates.append(i*j)
		range_list.pop(0)

	print "Optimized:", count
	print max(candidates)


def bruteCheck(minN, maxN):
	count = 0
	candidates = []
	for i in range(maxN, minN, -1):
		for j in range(maxN, minN, -1):
			count += 1
			if isPalindrome( i * j ):
				candidates.append(i*j)
	print "Brute:", count
	print max(candidates)


def palindromify( num ):
	num_str = str(num)
	pally = num_str + num_str[::-1]
	return int(pally)

def stringCheck(minN, maxN):
	count = 0
	for pally in range(maxN, minN, -1):
		palindrome_candidate = palindromify(pally)
		for i in range(maxN, minN, -1):
			count += 1
			if palindrome_candidate % i == 0 :
				factor = palindrome_candidate / i
				if factor < maxN and factor > minN :
					print "String:", count
					print palindrome_candidate
					return


stringCheck(minN, maxN)
optimizedCheck(minN, maxN)
bruteCheck(minN, maxN)


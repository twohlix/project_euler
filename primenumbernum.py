#euler problem 7 
#largest prime factor

import sys

theNumber = int(sys.argv[1]);

primes = [2,3]

def isPrime(x):
	for i in primes:
		if x % i == 0: return False;
	return True

l = 5;
while len(primes) < theNumber:
	l += 2
	if l % 50000 == 1:
		print len(primes);	

	if isPrime(l):
		primes.append(l)

print primes[theNumber-1]


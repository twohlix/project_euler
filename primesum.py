#euler problem 10 
#sum of prime numbers below x

import sys

theNumber = int(sys.argv[1]);

primes = [2,3]

def isPrime(x):
	for i in primes:
		if x % i == 0: return False;
	return True

for l in xrange(5, theNumber, 2):
	if l % 50000 == 1:
		print len(primes);	

	if isPrime(l):
		primes.append(l)

print sum(primes)


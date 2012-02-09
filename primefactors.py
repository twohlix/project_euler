#euler problem 3 
#largest prime factor

import sys

theNumber = int(sys.argv[1]);

primes = [2,3]
primeFactors = []

def isPrime(x):
	for i in primes:
		if x % i == 0: return False;
	return True

for l in range(5, theNumber, 2):
	if l % 5000 == 1:
		print l;	

	if isPrime(l):
		primes.append(l)
		if theNumber % l == 0:
			primeFactors.append(l);

print primeFactors


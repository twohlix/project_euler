#problem 1 of euler project
#sum all the natural numbers divisible by 3 or 5

sum = 0;
for i in range(0, 1000):
	if i % 3 == 0 or i % 5 == 0:
		sum += i

print sum

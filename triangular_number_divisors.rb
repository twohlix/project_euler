# Project Euler problem #12
# projecteuler.net/problem=12
# Divisor Counts of Triangular Numbers
require 'benchmark'
require 'prime'

def check_args
  abort(usage) if ARGV.length < 1 
end
def usage
  "#{$0} number-of-divisors"
end

def number_of_divisors(num)
  return 1 if num == 1
  return 2 if num <= 3

  prime_divisors = Prime.prime_division(num)

  ret = 1
  prime_divisors.each do |pd|
    ret *= pd[1] + 1
  end

  ret
end

check_args
num_divisors_to_find = ARGV[0].to_i

found = false
triangular_number = 0
i = 1
while !found
  triangular_number += i
  
  # here we have a nice triangular number
  if number_of_divisors(triangular_number) >= num_divisors_to_find
    puts triangular_number
    puts "Checked #{i} numbers"
    found = true
  end

  i += 1
end

puts "Not Found :(" unless found
# Project Euler problem #35
# projecteuler.net/problem=35
# Circular Primes under a particular number
require 'benchmark'
require 'prime'

def check_args
  abort(usage) if ARGV.length < 1 
end
def usage
  "#{$0} search-ceiling"
end

def is_circular_prime?(num)
  num_digits = num.to_s.chars.to_a
  (0..num_digits.length-1).each do |pass|
    return false unless Prime.prime? num_digits.join.to_i
    num_digits.push(num_digits.shift)
  end

  return true
end

check_args
search_ceiling = ARGV[0].to_i

primes = Prime.take_while {|p| p < search_ceiling }

circular_primes = []
primes.each do |prime|
  circular_primes.push(prime) if is_circular_prime? prime
end

puts circular_primes
puts "#{circular_primes.length} primes under #{search_ceiling}"
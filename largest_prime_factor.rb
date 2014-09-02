# Project Euler problem #3
# projecteuler.net/problem=3
# Largest Prime Factor
require 'prime'
require 'benchmark'

def check_args
  abort(usage) if ARGV.length < 1 
end
def usage
  "#{$0} number"
end

def largest_prime_factor(number)
  top_factor_possible = number / 2 
  i = 2
  @count = 0
  while i < top_factor_possible
    @count += 1
    if number % i == 0
      if Prime.prime?(number/i)
        return number/i
      end
    end

    i += 1
  end

  nil
end

check_args
number = ARGV[0].to_i

puts Benchmark.measure { puts largest_prime_factor(number) }

puts "Went through #{@count} possible factors"
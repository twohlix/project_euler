# Project Euler problem #20
# projecteuler.net/problem=20
# Factorial Digit Sum
require 'benchmark'

def check_args
  abort(usage) if ARGV.length < 1 
end
def usage
  "#{$0} number-to-factorialize"
end

class Integer
  def factorial
    return 1 if self == 0
    return nil if self < 0

    (1..self).reduce(:*)
  end

  def sum_digits
    sum = 0
    self.to_s.each_char do |digit|
      sum += digit.to_i
    end  

    sum
  end
end


check_args
number = ARGV[0].to_i

factorialized = number.factorial
puts factorialized.sum_digits


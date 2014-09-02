# Project Euler problem #6
# projecteuler.net/problem=6
# Sum Square Difference
require 'benchmark'

def check_args
  abort(usage) if ARGV.length < 1 
end
def usage
  "#{$0} number"
end

check_args
to_number = ARGV[0].to_i
abort("Must be greater than 0") unless to_number > 0

def sum_squares(start, finish)
  sum = 0
  (start..finish).each do |val|
    sum += val ** 2
  end

  sum
end

def square_sums(start, finish)
  sum = 0
  (start..finish).each do |val|
    sum += val
  end

  sum ** 2
end

sum_sqs = sum_squares(1, to_number)
sq_sums = square_sums(1, to_number)
difference = sq_sums - sum_sqs

puts "Sum of Squares: #{sum_sqs}"
puts "Square of Sums: #{sq_sums}"
puts "Difference:     #{difference}"
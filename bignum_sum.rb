# Project Euler problem #13
# projecteuler.net/problem=13
# Large Sum
require 'benchmark'

def check_args
  abort(usage) if ARGV.length < 1 
end
def usage
  "#{$0} file-of-big-nums"
end

file_path = ARGV[0]
nums = []
IO.foreach(file_path) do |line|
  nums << line.to_i
end

puts nums.inject(:+)
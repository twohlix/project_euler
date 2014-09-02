# Project Euler problem #8
# projecteuler.net/problem=8
# Largest Product in a Series
require 'benchmark'

def check_args
  abort(usage) if ARGV.length < 2 
end
def usage
  "#{$0} adjacency-length series"
end

adjacency_length = ARGV[0].to_i
series = ARGV[1]

winning_product = 0
winning_start_index = 0
winning_end_index = 0

for i in 0..(series.length-adjacency_length)
  set = series.slice(i, adjacency_length).chars
  next if set.include? '0'

  prod = 1
  set.each do |val|
    prod *= val.to_i
  end
  current_product = prod

  if current_product > winning_product
    winning_product = current_product
    winning_start_index = i
    winning_end_index = i + adjacency_length-1

    puts "#{set} -> #{current_product}"
  end
end

puts "Product: #{winning_product}"
puts "Start:   #{winning_start_index}"
puts "Finish:  #{winning_end_index}"
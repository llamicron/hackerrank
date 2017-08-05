#!/bin/ruby

def aVeryBigSum(n, ar)
  sum = 0
  ar.each do |x|
    sum += x
  end
  sum
end

n = gets.strip.to_i
ar = gets.strip
ar = ar.split(' ').map(&:to_i)
result = aVeryBigSum(n, ar)
puts result;

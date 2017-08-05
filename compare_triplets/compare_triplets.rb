#!/bin/ruby

def solve(a, b)
  a_points = 0
  b_points = 0

  3.times do |x|
    if a[x] > b[x]
      a_points += 1
    elsif b[x] > a[x]
      b_points += 1
    end
  end
  return [a_points, b_points]
end

a0 = ARGV[0].to_i
a1 = ARGV[1].to_i
a2 = ARGV[2].to_i
b0 = ARGV[3].to_i
b1 = ARGV[4].to_i
b2 = ARGV[5].to_i
result = solve([a0, a1, a2], [b0, b1, b2])
print result.join(" ")



#!/bin/ruby

n = ARGV[0].strip.to_i
a = Array.new(n)
for a_i in (0..n-1)
    a_t = ARGV[1].strip
    a[a_i] = a_t.split('/').map(&:to_i)
end

class Array
  def primary_diag
    sum = 0
    self.count.times do |x|
      sum += self[x][x]
    end
    sum
  end

  def secondary_diag
    sum = 0
    index = self.count - 1
    self.count.times do |x|
      sum += self[x][index]
      index -= 1
    end
    sum
  end
end

print (a.primary_diag - a.secondary_diag).abs

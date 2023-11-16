#!/usr/bin/env ruby

class Solution

  def initialize(sum=0)
    @sum = 0
  end

  def calculate(n)
    for i in 1...n
      if i % 3 == 0 || i % 5 == 0
        @sum += i
      end
    end
    return @sum
  end

end

object = Solution. new
ARGV.each do |a|
  puts object.calculate(a.to_i)
end

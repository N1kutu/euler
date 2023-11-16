#!/usr/bin/env ruby

class Solution
  
  def initialize(list=[], sum=0)
    @list = [1, 2]
    @sum = 0
  end

  def list_builder(n)
    for i in 0...n
      add = @list[i] + @list[i + 1]
      if add < 4*(10**6)
        @list.push(add)
      else 
        break
      end
    end
    return @list
  end

  def check_even(n)
    for i in @list
      if i % 2 == 0
        @sum += i
      end
    end
  end
  
  def calculate(n)
    list_builder(n)
    check_even(n)
    return @sum
  end
end

object = Solution. new
ARGV.each do |a|
  puts object.calculate(a.to_i)
end

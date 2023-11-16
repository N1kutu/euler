#!/usr/bin/env ruby

class Solution

  def initialize(list=[])
    @list = []
  end

  def list_builder(n)
    @list = n.digits.reverse()
  end

  def calculate(n)
    list_builder(n)
    biggest = 1
    for i in 0..@list.length() - 13
      tmp = 1
      for j in 0...13
        tmp *= @list[i+j]
        if tmp > biggest 
          biggest = tmp
        end
      end
    end
    return biggest
  end
end

object = Solution. new
ARGV.each do |a|
  puts object.calculate(a.to_i)
end

#!/usr/bin/env ruby

class Solution

  def initialize()
  end

  def palindrome_checker(n)
    if n.digits == n.digits.reverse()
      return true
    end
    return false
  end

  def calculate(n)
    biggest = 0
    for i in 10**(n-1)...10**n
      for j in 10**(n-1)...10**n
        if palindrome_checker(i * j) and i * j > biggest
          biggest = i * j
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

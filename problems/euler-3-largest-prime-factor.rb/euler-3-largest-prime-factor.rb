#!/usr/bin/env ruby

require 'prime'

class Solution

  def initialize(primes=[])
    @primes = []
    @a = 0
    @b = 2
    @c = 0
  end

  def prime_checker(n)
    for i in 2..n 
      if n % i == 0 && n != i 
        return false
      end
    end
    return true
  end

  def calculate(n)
    @a = n
    for i in (2..((n**0.5)+1))
      if @a % @b == 0
        @c = @b
        @a = @a / @b 
      end
      @b += 1
    end
    return @c
  end
end

object = Solution. new
ARGV.each do |a|
  puts object.calculate(a.to_i)
end

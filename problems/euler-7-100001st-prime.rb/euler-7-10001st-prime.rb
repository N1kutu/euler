#!/usr/bin/env ruby 

class Solution

    def initialize(primes=[])
      @primes = []
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
      count = 0
      i = 1
      while count < n
        if prime_checker(i)
          @primes.push(i)
          count += 1
        end
        i += 2
      end
      return @primes[-1]
    end
end

object = Solution. new
ARGV.each do |a|
  puts object.calculate(a.to_i)
end

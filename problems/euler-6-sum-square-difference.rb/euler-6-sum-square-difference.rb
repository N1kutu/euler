#!/usr/bin/env ruby

class Solution

  def initialize(squares=[], square_sum=[])
    @squares = []
    @square_sum = []
    @sum1 = 0
    @sum2 = 0
  end

  def squares_builder(n)
    for i in 1..n 
      @squares.push(i**2)
    end
  end

  def square_sum_builder(n)
    for i in 1..n
      @square_sum.push(i)
    end
  end


  def calculate(n)
    squares_builder(n)
    @squares.each { |a| @sum1 += a }
    square_sum_builder(n)
    @square_sum.each { |a| @sum2 += a } 
    return (@sum2 ** 2) - @sum1
  end
end

object = Solution. new
ARGV.each do |a|
  puts object.calculate(a.to_i)
end


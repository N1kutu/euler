#!/usr/bin/env ruby 

class Solution
  
  def initialize(list=[])
    @list = []
  end

  def list_builder(n)
    for i in 1..n
      @list.push(i)
    end
  end
  
  def calculate(n)
    list_builder(n)
    not_found = true
    i = 2520
    while not_found
      counter = 0
      for x in @list 
        if i % x == 0
          counter += 1 
        end
      end
      if counter == @list.length
        return i
      end
      i += 2520
    end
  end

end

object = Solution. new
ARGV.each do |a|
  puts object.calculate(a.to_i)
end

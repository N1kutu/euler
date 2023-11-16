#!/usr/bin/env ruby

class Solution 

end

output = Solution. new
ARGV.each do |a|
  puts output.calculate(a.to_i)
end

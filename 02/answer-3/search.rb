#!usr/bin/env ruby
#--
# Author: Marcos Alves
#++

def find(list, lower, upper, content)
	return -1 if lower > upper

	middle = (lower+upper)/2

	if list[middle] == content
		middle
	elsif content < list[middle]
		find(list, lower, middle-1, content)
	else
		find(list, middle+1, upper, content)
	end			
end

def binary(list, content)
	find(list, 0, list.length, content)
end

a = Array.new(10) { rand(1..10)  }

rot = gets.to_i
a.sort!

#for _ in 1..rot do a.rotate! end

(0..a.length-1).each do |i| puts "X[#{i}] %i"%[a[i]] end
puts "-------------"
puts binary(a, 10)
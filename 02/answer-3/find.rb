#!usr/bin/env ruby
#--
# Author: Marcos Alves
#++

def index(list, value)
	(0..list.length-1).each do |i|
		if list[i] == value then return i end
	end
	-1
end

a = Array.new(100) { rand(1..10) }

(0..a.length-1).each do |i| puts "X[#{i}] %i"%[a[i]] end
puts "-------------"
puts index(a, 10)
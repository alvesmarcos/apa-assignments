#!/usr/bin/env ruby
#--
# Author: Marcos Alves
#++

require './vector'

lp = gets.to_i
v = Vector.new

for _ in 1..lp
	number = gets.to_i
	v.push(number)
end

v.sort!
v.to_s
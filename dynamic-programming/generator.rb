#!/usr/bin/env ruby
#--
# Author: Marcos Alves
#++

# define value input
INPUT = 3
# define lines input
LINES = 50

def pascal_triangle
	for i in 1..INPUT
		# select file name
		target = open("pascal-triangle/input/00" << i.to_s << ".in", 'w')
		target.write(LINES.to_s << "\n")
		# loop
		for _ in 1..LINES
			while (n = rand(15)) < (k = rand(15));end
			target.write(n.to_s << " " << k.to_s << "\n")
		end
	end
end

pascal_triangle
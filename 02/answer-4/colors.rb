#!usr/bin/env ruby
#--
# Author: Marcos Alves
#++

def insertion!(list)
	len = list.length - 1
	dictionary = {'R' => 1, 'G' => 2, 'B' => 3}

	for i in 0..len-1
		if dictionary[list[i][0]] > dictionary[list[i+1][0]]
			index = i-1
			list[i], list[i+1] = list[i+1], list[i]

			while index >= 0 and dictionary[list[index][0]] > dictionary[list[index+1][0]]
				list[index+1], list[index] = list[index], list[index+1]		
				index-=1
			end
		end
	end
end

lp = gets.to_i

hash = Array.new(lp) { Array.new(2) }

for i in 0..lp-1 do hash[i][0] = gets.chomp end
for i in 0..lp-1 do hash[i][1] = gets.to_i end

insertion!(hash)
puts hash.to_s
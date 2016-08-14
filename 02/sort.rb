#!/usr/bin/env ruby
#--
# Author: Marcos Alves
#++

module Sort
	# private method
	# return partition part of the list
	def partition(list, head, tail)
		pivot = list.at(tail)
		index = head

		(head..tail-1).each do |i|
			if pivot >= list.at(i)
				list.get(index).content, list.get(i).content = list.get(i).content, list.get(index).content
				index+=1
			end
		end
		list.get(tail).content, list.get(index).content = list.get(index).content, pivot
		index
	end

	# sorting list with quicksort
	# recursive
	def quick!(list, head, tail)
		if head < tail
			half = partition(list, head, tail)
			quick!(list, head, half-1)
			quick!(list, half+1, tail)
		end
	end

	private :partition
end
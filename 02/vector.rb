#!usr/bin/env ruby
#--
# Author: Marcos Alves
#++

class Node
	# initialize attr.
	# constructor
	def initialize(content, front=nil, back=nil)
		@content=content
		@front=front
		@back=back
	end
end

class Vector
	attr_reader :length, :first
	# initialize attr.
	# constructor
	def initialize(length=0)
		@length = length
		@first = nil
		@last = nil
	end

	# delete content the index
	# no return
	def delete_at(index)
		#TODO
	end

	# return content the index one
	def first
		@first.content
	end

	# get any element
	# return content
	def get(index)
		#TODO
	end

	# insert content the index
	# no return
	def insert(index, content)
		#TODO
	end

	# return content the index `n`
	def last
		@last.content
	end

	# return size the vector
	def length
		@length
	end

	# insert element in last
	# no return
	def push(value)
		node = Node.new(value, nil, @last)
		@last = node
		@first+=1
	end

	# delete element in last
	# no return
	def pop
		@last.back = @last
	end

	# A COPY
	# return a copy of the sorted
	def sort
		#TODO
	end

	# DIRECT access the vector
	# no return
	def sort!
		#TODO
	end
end
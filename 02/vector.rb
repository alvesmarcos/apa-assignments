#!usr/bin/env ruby
#--
# Author: Marcos Alves
#++

class Node
	attr_accessor :content, :back, :front
	# initialize attr.
	# constructor
	def initialize(content, back=nil, front=nil)
		@content = content
		@back = back
		@front = front
	end
end

class Vector
	attr_reader :length, :first, :last
	# initialize attr.
	# constructor
	def initialize
		@length = 0
		@first = nil
		@last = nil
	end

	# get any element
	# return content
	def at(index)
		get(index).content
	end

	# delete content the index
	# return boolean
	def delete_at(index)	
		if index==1
			@first = tmp.front
			@first.back = nil
		elsif @length==index
			pop;
		else
			tmp = get(index)
			tmp.back.front = tmp.front 
			tmp.front.back = tmp.back
		end
		@length-=1
		true
	end

	# return content the index one
	def first
		@first.content
	end

	# get any element
	# return adress
	def get(index)
		if length/2 >= index 
			tmp = @first
			half = false 
			count = 1
		else 
			tmp = @last
			half = true
			count = @length
		end

		until count==index
			if half
				tmp = tmp.back 
				count-=1
			else
				tmp = tmp.front
				count+=1
			end
		end
		tmp
	end

	# insert content the index
	# no return
	def insert(index, content)
		if index==1 and @length!=0
			node = Node.new(content, nil, @first)
			@first = node
		elsif @length+1==index
			push(content)
		else
			tmp = get(index)
			node = Node.new(content, tmp.back, tmp)
			tmp.back.front = node
			tmp.back = node
		end
		@length+=1
		true
	end

	# return content the index `n`
	def last
		@last.content
	end

	# return size the vector
	def length
		@length
	end

	# delete element in last
	# no return
	def pop
		if @length==1
			@last = nil
			@first = nil
		else 
			@last = @last.back
			@last.front = nil
			@first = @last if @length==2
		end
		@length-=1
	end

	# insert element in last
	# no return
	def push(value)
		node = Node.new(value)
		if @length==0
			@last = node
			@first = node
		else
			@last.front = node
			node.back = @last
			@last = node
		end
		@length+=1
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

	def to_s
		tmp = @first
		until tmp==nil
			puts tmp.content
			tmp = tmp.front
		end
	end
end
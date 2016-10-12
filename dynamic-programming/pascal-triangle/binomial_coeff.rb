#!/usr/bin/env ruby
#--
# Author: Marcos Alves
#++

# The Problem: Pascal's triangle (Binomial Coefficient)
# Write a function that takes two parameters n and k and returns
# the value of Binomial Coefficient C(n, k). For example, your 
# function should return 6 for n = 4 and k = 2, and it should
# return 10 for n = 5 and k = 2.
#
# Formula: C(n, k) = n!/k!(n-k)!
#
# Stifel's Triangle
#

def binomial_coeff(n, k)
	# empty array 
	c = Array.new(n+1, 0)	# loop form triangle
	c[0] = 1 # base case
	for i in 0..n
		[i,k].min.downto(1) do |j| # colunm MAX
			c[j] = c[j] + c[j-1]
		end	
	end
	c[k]
end

# loop value
lp = gets.to_i

# read (N K)
for i in 1..lp
	n, k = gets.split().map(&:to_i)
	# result
	puts binomial_coeff(n, k)
end
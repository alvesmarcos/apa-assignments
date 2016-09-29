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
	c = Array.new(n+1) { Array.new(k+1, 0) }
	# loop form triangle
	for i in 0..n
		for j in 0..[i,k].min # colunm MAX
			if j==0 or j==i then c[i][j] = 1 else c[i][j] = c[i-1][j-1] + c[i-1][j] end
		end	
	end
	c[n][k]
end

# loop value
lp = gets.to_i

# read (N K)
for i in 1..lp
	n, k = gets.split().map(&:to_i)
	# result
	puts binomial_coeff(n, k)
end
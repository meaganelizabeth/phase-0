# I worked on this challenge by myself.
# This challenge took me [#] hours.


# Pseudocode
# Write a method that modifies an array of integers
# Input: array of integers
# Output: same array in which:
#  - multiples of 3 replaced with string "Fizz"
#  - multiples of 5 replaced with string "Buzz"
#  - multiples of 15 replaced with string "FizzBuzz"
# Steps to solve
# create method super_fizzbuzz that accepts takes an array as an argument
# interate over each integer in the array
# IF integer is divisible by 3 AND not divisible by 15,
#  integer is now string "Fizz"
# ELSE IF integer is divisible by 5 AND not divisible by 15,
#  integer is now string "Buzz"
# ELSE IF integer is divisible by 15
#   integer is now string "FizzBuzz"
# ELSE
#  integer is unchanged
# return modified array




# Initial Solution

# def super_fizzbuzz(array)
# 	array.map! do |num|
# 		if (num%3 == 0) && (num%15 != 0)
# 			num = "Fizz"
# 		elsif (num%5 == 0) && (num%15 != 0)
# 			num = "Buzz"
# 		elsif (num%15 == 0)
# 			num = "FizzBuzz"
# 		else
# 			num = num
# 		end	
# 	end
# 	return array
# end



# Refactored Solution

def super_fizzbuzz(array)
	array.map! { |num|
		case 
		when (num%3 == 0) && (num%15 != 0) then num = "Fizz"
		when (num%5 == 0) && (num%15 != 0) then num = "Buzz"
		when (num%15 == 0) then num = "FizzBuzz"
		when (num%15 != 0) && (num%3 != 0) && (num%5 != 0) then num = num
		end	
	}
	return array
end



# Reflection

# What concepts did you review or learn in this challenge?

# In this challenge I reviewed control flow, iterating over arrays, and method
# writing in Ruby.

# What is still confusing to you about Ruby?

# Writing classes is still pretty confusing to me but luckily(?) that wasn't
# covered in this review challenge.

# What are you going to study to get more prepared for Phase 1?

# Ugh, EVERYTHING. But mostly bone up on writing classes. 

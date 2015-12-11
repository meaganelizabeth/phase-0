# Numbers to Commas Solo Challenge

# I spent 2 hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input? A positive integer
# What is the output? (i.e. What should the code return?) A comma-separated integer as a string
# What are the steps needed to solve the problem?
# Convert integer to a string of digits
# Convert each digit in the string to a string item in an array 
# Reverse the array
# Add a comma to each string whose index is divisible by 3 (excepting index 0)
# Reverse the new array
# Convert the new array to a string 
# Return the string

# 1. Initial Solution
def separate_comma (number)
	array = number.to_s.split("").reverse
	array.each_with_index do |string, index|
		if index == 0
			array[index] = string
		elsif index%3 == 0
			array[index] = (string + ",")
		else
			array[index] = string
		end
	end
	array.reverse.join
end



# 2. Refactored Solution
def separate_comma (number)
	array = number.to_s.split("").reverse
	array.each_with_index do |string, index|
		if index == 0
			array[index] = string
		elsif index%3 == 0
			array[index] = (string + ",")
		else
			array[index] = string
		end
	end
	array.reverse.join
end



# 3. Reflection
# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge with Joe Kim 

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input: 1, 2, 3
# Output: 1 + 2 + 3 = 6
# Steps to solve the problem.
# start from index0 which is 1
# add 1 with index1 (which is 2)
# have sum of 3
# add with index2 (which is 3)
# have a total sum of 6
# return 6

# 1. total initial solution
def total (array)
	index = 0
	sum = 0
	while index < array.length
		sum = sum + array[index]
		index += 1
	end
	return sum
end

# 3. total refactored solution

#def total (array)
#	array.inject { |sum, n| sum + n }
#end




# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input: array of strings
# Output: single sentence with spaces in between each word, first letter is capitalized, period at the end
# Steps to solve the problem.
# define the method
# use a while loop to join strings one at a time while adding spaces between
# capitalize first string in array
# add period as string 
# 


# 5. sentence_maker initial solution
#def sentence_maker (array)
#	index = 0
#	while index < array.length
#		if index == 0
#			sentence = array[index].to_s.capitalize
#		else 
#			sentence = sentence + " " + array[index].to_s
#		end
#		index += 1
#	end
#	sentence = sentence + "."
#	return sentence 
#end


# 6. sentence_maker refactored solution
def sentence_maker(array)
	sentence = array.join(" ")
	sentence = sentence.to_s.capitalize + "."
end

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
		if index%3 == 0 && index != 0
			array[index] = (string + ",")
		end
	end
	array.reverse.join
end


# 3. Reflection

#What was your process for breaking the problem down? What different
#approaches did you consider?

#Since it was fairly obvious that I would eventually be adding a comma to
#individual elements in the input string, I first spent a lot of time thinking
#about what criteria those string elements would need to make to "earn" the
#addition of a comma. This lead to the realization that reversing the order of
#the string elements and putting them in an array would create a situation in
#which the same positions in the array would be "earning" a comma and from
#there it was a matter of writing the logic that matched those conditions and
#converting the altered array back to the string that would ultimately be the
#method's output.

#Was your pseudocode effective in helping you build a successful initial
#solution?

#I don't think I would have been able to solve this problem without first
#pseudocoding it. To me, pseudocoding is to Ruby what wireframing is to HTML
#and CSS. Without it I'm unable to work towards a solution because I don't
#know where to start coding. It's also particularly helpful at this early
#stage of my technical proficiency with Ruby since I don't know many methods
#or ennumerables off the top of my head and need to take frequent side trips
#to Google to find out what I should utilizing to complete individual steps of
#the program. Using my pseudocode during these side trips helps me keep track
#of where I am in working torward my initial solution.

#What new Ruby method(s) did you use when refactoring your solution? Describe
#your experience of using the Ruby documentation to implement it/them (any
#difficulties, etc.). Did it/they significantly change the way your code
#works? If so, how?

#My refactored solution is just my initial solution with cleaner logic, but I
#ended up using a couple methods I was previously unfamiliar with in my
#initial solution. These included .split, which converts a string into an
#array, and .each_with_index, which iterates over an array in the same way
#.each does but allows each elements index to be used as a variable in the
#iteration.

#How did you initially iterate through the data structure?

#I initially iterated through the data structure by calling .each_with_index
#on the array created from the input string.

#Do you feel your refactored solution is more readable than your initial solution? Why?

#I feel my refactored solution is more readable than my initial solution
#because redundancies in my logic have been eliminated in my refactored
#solution.


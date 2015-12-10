# Calculate the mode Pairing Challenge

# I worked on this challenge [with: Meagan Munch]

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input?
# Array
# What is the output? (i.e. What should the code return?)
# Another Array containing the most frequent value[s] of the first array.
# What are the steps needed to solve the problem?
# Define METHOD "Mode" w/ "Array" Parameter
# Create Empty HASH
# Give HASH default value of "1"
# Iterate through the array
# Make each entry in the array a new hash if not already a key.
# If it is already a key, add 1 to value of the already-existing key.
# Find max value[s] of hash
# If keys value is equal to max value, push into new array.
# Return the array

# 1. Initial Solution
#def mode(array)
#	hash = Hash.new(0)
#	array.each do |item|
#		if hash[item] != nil
#			hash[item] += 1
#		end
#	end

#	new_array = []
#	max_value = hash.values.max
#	hash.each do |k, v|
#		if hash[k] == max_value
#			new_array.push(k)
#		end
#	end
#	p new_array
#end







# 3. Refactored Solution
#def mode (array)
def mode(array)
	hash = Hash.new(0)
	array.each {|item| hash[item] += 1 if hash[item] != nil}

	new_array = []
	max_value = hash.values.max
	hash.each { |k, v| new_array.push(k) if hash[k] == max_value}
	p new_array
end








# 4. Reflection

#Which data structure did you and your pair decide to implement and why?

#We decided to us a hash because the dual storage of keys and values made it
#poosible to count the number of times an element occured in a given array
#(array elements were keys and the number of times they occured in the array
#became the values of our hash).

#Were you more successful breaking this problem down into implementable
#pseudocode than the last with a pair?

#I personally found pseudocoding to be a little bit more difficult in this
#challenge since the steps to solving it did not come to me as intuitively and
#I really had to think about what I was doing. Hopefully my pseudocode will
#improve with practice.

#What issues/successes did you run into when translating your pseudocode to
#code?

#Our initial solution initially returned an empty array no matter what the
#input. This was tied up in how we were difining our new hash and took some
#trial and error to correct.

#What methods did you use to iterate through the content? Did you find any
#good ones when you were refactoring? Were they difficult to implement?

#We found one method, .mode, but could not find a way to implement it in our
#method definition without returning errors. For our refactored solution we
#ended up cleaning up our intial solution by shortening our code blocks and if
#statements.






# Pad an Array

# I worked on this challenge with LeeAnne Hawley

# I spent 1 hour on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input?  
#An array, a number and an object.

# What is the output? (i.e. What should the code return?)

#A new array that is the length of the number input with object input in
#positions that need to be filled.

# What are the steps needed to solve the problem ?

# Define a method pad and pad!
# Have the method accept three values: array_1, number, object.
# Create a new array: new_array.
# Put each item in array_1 into new_array.
# WHILE new_array's length is less than number, add object to new_array.
# loop ends when new_array has the number of objects in it. 
# Return new_array.


# 1. Initial Solution
def pad(array, min_size, value = nil)
  array_new = [ ]
  array.each do |x|
    array_new.push(x)
  end
  while array_new.length < min_size
    array_new.push(value)
  end
  return array_new
end


def pad!(array, min_size, value = nil)
  while array.length < min_size
    array.push(value)
  end
  return array
end


# 3. Refactored Solution
def pad(array, min_size, value = nil)
  array_new = array.collect {|x| x}
  while array_new.length < min_size
    array_new.push(value)
  end
  return array_new 
end

# pad! looked good to us and we decided not to refactor further
def pad!(array, min_size, value = nil)
  while array.length < min_size
    array.push(value)
  end
  return array
end

# 4. Reflection
#Were you successful in breaking the problem down into small steps?

#I thought so. This was my first real attempt at pseudocoding in real time and
#once I got a feel for what would need to happen step by step writing the
#pseudocode felt pretty intuitive.

#Once you had written your pseudocode, were you able to easily translate it
#into code? What difficulties and successes did you have?

#Translating the pseudocode into code went fairly smoothly. It helps that
#coding in Ruby feels similar to writing in English (It didn't feel terribly
#abstract)

#Was your initial solution successful at passing the tests? If so, why do you
#think that is? If not, what were the errors you encountered and what did you
#do to resolve them?

#Our initial solution was not successful at passing the tests because we
#initially wrote a non-destructive method for pad!. Once we figured out our
#error it was simple enough to rectify by changing our method name.

#When you refactored, did you find any existing methods in Ruby to clean up
#your code?

#We found a method .collect that will iterate over an array and do the same
#thing to each item in an array. We used it in our refactored solution for pad
#(but not in our refactored solution for pad!)

#How readable is your solution? Did you and your pair choose descriptive
#variable names?

#I think our solution is readable and we did a good job of using variable
#names that make it clear what purpose each variable is serving in the method
#definition. We did our best to change lines and indent appropriately as well.

#What is the difference between destructive and non-destructive methods in
#your own words?

#Non-destuctive methods will not permanently change the object they are called
#on (instead returning a modified copy of the object) while destructive
#methods will permanently change the object.

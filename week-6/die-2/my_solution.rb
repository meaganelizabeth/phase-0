# Die Class 2: Arbitrary Symbols


# I worked on this challenge by myself.
# I spent [#] hours on this challenge.

# Pseudocode

#die = Die.new(['A', 'B', 'C', 'D', 'E', 'F'])
#die.sides still returns the number of sides, in this case 6
#die.roll returns one of ['A', 'B', 'C', 'D', 'E', 'F'], randomly
# Steps:
# define class Die
# initialize takes array as an argument
# if array is empty, raise an argument error
# define sides as the number of elements in the array given in initialization
# define roll as random item from array given in initialization


# Initial Solution

class Die
  def initialize(labels)
  	if labels == []
  		raise ArgumentError, "Die must have at least one label"
  	else
  		@labels = labels
  	end
    @sides = labels.length
  end

  def sides
  	@sides
  end

  def roll
  	@labels[rand(0...@sides)]
  end
end



# Refactored Solution

class Die
  def initialize(labels)
    raise ArgumentError, "Die must have at least one label" unless labels.length >= 1
    @labels = labels
    @sides = labels.length
  end

  def sides
    @sides
  end

  def roll
    @labels.sample
  end
end




# Reflection

#What were the main differences between this die class and the last one you
#created in terms of implementation? Did you need to change much logic to get
#this to work?

# The main difference between this die class and last one I created is that
# the previous class took a number of sides as an argument on initialization
# while this class took the actual CONTENT of each individual side on
# initialization. This made setting the value for the number of sides a bit
# more complicated for this class, though not by a lot. It simply meant
# setting the number of sides equal to the length of the imput array.

#What does this exercise teach you about making code that is easily changeable
#or modifiable?

#This exercise demonstrated the value of understanding my logic so that I'm
#able to shorten it in refactoring and also do define variables early in the
#life a program so if changes need to be made to values or imputs you only
#need to alter a variable once rather than several times.

#What new methods did you learn when working on this challenge, if any?

#I learned about the .sample method, which returns a random element from the
#array it's called on.

#What concepts about classes were you able to solidify in this challenge?

#I definately have the initialization down for classes in Ruby.
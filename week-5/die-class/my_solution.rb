# Die Class 1: Numeric

# I worked on this challenge by myself.

# I spent 2 hours on this challenge.

# 0. Pseudocode

# Input:
# Output: Die class that has an argument and two methods
# Initialize a die class that takes a number of sides as an argument
# write a method that outputs number of sides for Die object
# write a method that outputs a random number between 1 and the number of sides
# in the second method, raise an exception if Die is passed a number for sides that is less than one.

# 1. Initial Solution

class Die
  def initialize(sides)
    @sides = sides
    sides()
  end

  def sides
    unless @sides > 0
      raise ArgumentError.new("Die must have a minimum of one side.")
    end
    return @sides
  end

  def roll
    return rand(1..@sides)
  end
end

# 3. Refactored Solution

#I feel that I can't make my initial code any simpler

#Reflection

#What is an ArgumentError and why would you use one?

#An ArgumentError is a red flag raised by Ruby if there wrong number or
#incorrect arguments are passed to a method. In the case of the die class we
#just created, it reminds us that it is physically impossible for a die not to
#have at least one side

#What new Ruby methods did you implement? What challenges and successes did
#you have in implementing them?

#I used the rand method to write the die rolling method. It was not hard to implement.

#What is a Ruby class?

#A Ruby class is a blueprint from which individual objects in Ruby may be created.

#Why would you use a Ruby class?

#You would use a Ruby class when you wanted to created many objects that
#behave the same way and possess the same features without defining these behaviors
#and features for each indiviual object. It's a way to save time and work when
#programming.

#What is the difference between a local variable and an instance variable?

#Local variables are only defined for the method in which they exist. Instance
#variables are possessed by every object in a class and therefore exist across
#many instances.

# Where can an instance variable be used?
#Instance variables can be used for any objects of their class.


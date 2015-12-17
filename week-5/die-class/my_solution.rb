# Die Class 1: Numeric

# I worked on this challenge by myself.

# I spent 2 hours on this challenge.

# 0. Pseudocode

# Input: 
# die = Die.new(6) creates an object with 6 sides

# Output:
# die.sides returns 6
# die.roll returns random number between 1 and 6 

# Steps:
# Create a new class Die
# set number of sides equal to number given at initialization
# have sides for class Die return sides
# have roll for class Die return a number between 1 and sides

# 1. Initial Solution

class Die
  def initialize(sides)
    if sides < 1
      raise ArgumentError, "Die must have at least 1 side"
    else
    @sides = sides
  end
  end

  def sides
    @sides
  end

  def roll
    (rand (sides)) + 1
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


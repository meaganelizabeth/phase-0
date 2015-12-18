# Build a simple guessing game


# I worked on this challenge by myself.
# I spent  hours on this challenge.

# Pseudocode

# Input: 
# GuessingGame class which initializes with an integer called answer

# Output:
# Instance method .guess which returns :high :correct or :low
# Instance method .solved? which returns either true or false

# Steps:
# create class GuessingGame
# have GuessingGame initialize with integer answer
# create instance variable @answer and set it equal to answer
# define method guess 
# have guess take argument number
# set @number equal to number
# if @number is less than @answer return :low
# if @number is equal to @answer return :correct
# if @number is greater than @answer return :high
# define method solved?
# return true if guess(@number) is :correct
# return false otherwise



# Initial Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
  end

  def guess(number)
  	@number = number
  	if @number < @answer
  		return :low
  	elsif @number == @answer
  		return :correct
  	else 
  		return :high
  	end
  end

  def solved?
  	if guess(@number) == :correct
  		return true
  	else
  		return false
  	end
  end
end






# Refactored Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
  end

  def guess(number)
  	@number = number
  	return :low if @number < @answer
  	return :correct if @number == @answer
  	return :high if @number > @answer
  end

  def solved?
  	unless guess(@number) != :correct
  		return true
  	end
  end
end



# Reflection

#How do instance variables and methods represent the characteristics and
#behaviors (actions) of a real-world object?

#Instance variables describe objects in Ruby the same way we would describe
#objects in the real world-- dogs are members of different breeds an have
#different fur colors, but all dogs belong to a breed and possess a fur color.
#If I were to create a class Dog, I could then create the instance variables
#@breed and @coat_color to describe each instance of Dog. Instance methods
#work in a similar way, describing what instances of a class can do rather
#than the characteristics they possess. All dogs run, bark and eat, so writing
#methods .run, .bark and .eat for class Dog allows me to have any instance of
#Dog run, bark or eat.

#When should you use instance variables? What do they do for you?

#You should use instance variables when you want to describe an element
#belonging to a class. Instance variables allow you to have many instances of
#a class with different yet unchanging characteristics.

#Explain how to use flow control. Did you have any trouble using it in this
#challenge? If so, what did you struggle with?

#Flow control in Ruby allows for you to do different things depending on the
#circumstances of a given condition. It is primarily accomplished using IF
#blocks which use the syntax
#
#        if #condition
#            #do or return statement
#        end
#
# if there are two possible conditions an ELSE statement can be appended to
# the IF block:
#
#        if #condition 
#            #do or return statement
#        else
#            #do or return statement
#        end
#
# and if there are more than two possible conditions unlimited ELSIF
# statements may be added to the IF/ELSE block.
#
#        if #condition 
#            #do or return statement
#        elsif
#            #do or return statement
#        elsif
#            #do or return statement
#        else
#            #do or return statement
#        end
#
# this is the most basic form of flow control, also known as branching, in
# Ruby. I did not have any trouble utilizing it in this challenge.

#Why do you think this code requires you to return symbols? What are the
#benefits of using symbols?

#I think this code requires me to return symbols because there is no ambiguity
#about whether a guess in the game is going to be low, high or correct. They
#are the only possible values a guess can return and are therefore unchanging.
#This unchanging aspect of their value is why they are being returned as
#symbols. The benefits of using symbols are their immutability and their
#ability to save memory by being stored in Ruby's internal symbol table.










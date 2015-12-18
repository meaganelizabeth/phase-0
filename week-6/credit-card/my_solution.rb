# Class Warfare, Validate a Credit Card Number


# I worked on this challenge with LeeAnne Hawley
# I spent 2 hours on this challenge.

# Pseudocode

# Input: 16 digit credit card number
# Output: True or false 
# Steps: Create a credit card class.
# Credit card class takes a credit card number argument on initialization.
# Create an ArgumentError if credit card is not equal to 16 digits.
# Write a method that converts a credit card number to an array
# Write a method that doubles every other value of the array except for the last digit.
# Write a method that flattens the array in digits and then sums all of the untouched and doubled digits.
# Write a method that checks to see if sum is a multiple of 10.
# Return a true or false answer.




# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

class CreditCard
  def initialize(digits)
    if digits.to_s.length != 16
      raise ArgumentError, "Credit card must have 16 digits"
    else
      @digits = digits
    end
  end

  def check_card
    array = @digits.to_s.split""
    array.each_with_index do |num, index| 
      if index%2 != 0
        array[index] = num.to_i
      else
        array[index] = (num.to_i) * 2
      end
    end

    array = array.join.split""
    array = array.map! {|x| x.to_i}
    sum_array = array.inject{ |sum, n| sum +n}
    
    if sum_array % 10 == 0
      return true
    else
      return false
    end
    
    
  end
end




  

# Refactored Solution

class CreditCard
  def initialize(digits)
    raise ArgumentError, "Credit card must have 16 digits" if digits.to_s.length != 16
    @digits = digits
  end

  def check_card
    array_1 = @digits.to_s.split""
    array_1.each_with_index do |num, index| 
      if index%2 != 0 then array_1[index] = num.to_i
      else array_1[index] = (num.to_i) * 2
      end
    end

    array_2 = (array_1.join.split"").map! {|x| x.to_i}
    sum_integers = array_2.inject{ |sum, n| sum +n}
    test = sum_integers % 10

    
    if test == 0 then return true 
    else return false  
    end
  end
end



# Reflection

#What was the most difficult part of this challenge for you and your pair?

#The most difficult part of this challenge for my pair and I was sussing out
#and implementing each individual step of the Luhn algorithm. It was not a
#simple process and a lot of the manipulation of the input data required
#converting array string elements to integers and back again.

#What new methods did you find to help you when you refactored?

#We did not use any new methods in our refactoring. We just cleaned up our
#logic with syntactic sugar and reduced the repetition of variables.

#What concepts or learnings were you able to solidify in this challenge?

#This challenge helped me to further solidify my understanding of instance
#variables and instance methods for classes and their applications.


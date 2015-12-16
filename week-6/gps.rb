# Your Names
# 1)Meagan Munch
# 2)Kurt Schlueter

# We spent 1 hour on this challenge.


# 1. Understand the code
# 2. Readability
# 3. Logic


# Bakery Serving Size portion calculator.
# Create serving size method
def ingredients_calc(item_to_make, available_ingredients)
  
  # Initializing variables
  # The key value pairs in the library are items you can make in this bakery
  # These are the foods that the bakery can make, and how many ingredirents are needed to make each item.
  
  
  # library is the _________
  
  ingredients_count = {"cookie" => 1, "cake" =>  5, "pie" => 7}

  # Raises error if item_to_make does not exist in library
  unless ingredients_count.has_key?(item_to_make)
    raise ArgumentError.new("#{item_to_make} is not a valid input")
  end

  # This calculates the remaining ingredients
  ingredients_needed = ingredients_count[item_to_make]
  remaining_ingredients = available_ingredients % ingredients_needed

  # Returns values for left over ingredients if there are any
  # if remaining_ingredients == 0
  #   return "Calculations complete: Make #{available_ingredients / ingredients_needed} #{item_to_make}(s)"
  # else
  #   # If there ARE leftovers, say how many (BONUS: and a suggested item)
  #   return "Calculations complete: Make #{available_ingredients / ingredients_needed} #{item_to_make}(s), you have #{remaining_ingredients} leftover ingredient(s). Bake #{remaining_ingredients} cookie(s) to use up remaining ingredients."
  # end  

  return_string = "Calculations complete: Make #{available_ingredients / ingredients_needed} #{item_to_make}(s)."
  
  if remaining_ingredients > 0
      return_string += " You have #{remaining_ingredients} leftover ingredient(s). Bake #{remaining_ingredients} cookie(s) to use up remaining ingredients."
  end
  
  return return_string
  
end

p ingredients_calc("pie", 7)
p ingredients_calc("pie", 8)
p ingredients_calc("cake", 5)
p ingredients_calc("cake", 7)
p ingredients_calc("cookie", 1)
p ingredients_calc("cookie", 10)
# p ingredients_calc("apples", 5)

#  Reflection

# What did you learn about making code readable by working on this challenge?

#I learned a little bit more about the importance of variable assignation and
#how it can make a program more or less understandable depending on how it is
#executed. I also learned more about the importance of not repeating yourself
#when coding.

#Did you learn any new methods? What did you learn about them?

#When refactoring I implemented the has_key? method for the first time, which
#checks to see if a key value exists for the hash that the has_key? method is
#called on.

#What did you learn about accessing data in hashes? 

#I didn't learn anything new about accessing data in hashes other than when
#and how to call the has_key method.

#What concepts were solidified when working through this challenge?

#I feel a lot more informed about what exactly I should be doing when going to
#refactor a piece of code. Prior to this GPS I would barely refactor and was
#unsure about where to start; now I feel like I have a process I can
#implement.


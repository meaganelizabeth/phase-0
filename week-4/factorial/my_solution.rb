# Factorial

# I worked on this challenge with Joe Kim.


# Your Solution Below
#def factorial(number)
  # Your code goes here
  # if number is 0, return 1
  # result = 1
  # while number is greater than 0...
  # result = result * number
  # number -= 1

#end

def factorial(number)
  if number == 0 
  	return 1
  end
  result = 1
  while number > 0
  	result = result * number
  	number -= 1
  end
  return result
end
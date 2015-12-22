#Attr Methods

# I worked on this challenge by myself

# I spent 1.5 hours on this challenge.

# Pseudocode

# Input: My name
# Output: A greeting that displays to the condole that includes my name
# Steps: 
# Create a class NameData
# create an attr_reader set to :name
# have NameData initialize with argument name set to my name
# Create a class Greetings
# set my_name equal to NameData.new on initialization
# define a method greet that prints a greeting with my_name to the console

class NameData
  attr_reader :name

  def initialize(name)
    @name = name
  end

end


class Greetings

  def initialize(name)
    @my_name = NameData.new(name)
  end

  def greet
    puts puts "Hello #{@my_name.name}! How wonderful to see you today."
  end
end

hi = Greetings.new('Meagan')
hi.greet

# Reflection

# RELEASE 1

# What are these methods doing?

# Some of these methods are returning values (such as what_is_name,
# what_is_age, and what_is_occupation) while others are modifying values
# (such as change_my_name, change_my_age, and change_my_occupation)

# How are they modifying or returning the value of instance variables?

# Methods that return values simply return and already-existing instance
# variable, while methods that modify values take an argument and set the
# value of an instance variable to that argument.

# RELEASE 2

# What changed between the last release and this release? What was replaced?
# Is this code simpler than the last?

# The what_is_age method has been eliminated and replaced with attr_reader
# :age. Now to get the @age value outside the method you call .age on
# instances of Profile. This code is simpler than the last.

# RELEASE 3

# What changed between the last release and this release? What was replaced?
# Is this code simpler than the last?

# The change_my_age method has been eliminated and replaced with attr_writer
# :age. Now to reset the @age value outside the method you call .age = (new
# age) on instances of Profile. This code is simpler than the last.

# RELEASE 6

# What is a reader method?

# A reader method is an instance method that uses the syntax attr_reader to
# return a value or state outside of a class.

# What is a writer method?

# A writer method is an instance method that uses the syntax attr_writer to
# change the value of a variable outside of a class.

# What do the attr methods do for you?

# Attr methods allow for cleaner code by condensing reader and writer methods
# to one line of code (rather than a code block) and, in the case of the
# attr_accessor method, combining reader and writer methods into a single
# method.

# Should you always use an accessor to cover your bases? Why or why not?

# You shouldn't always use an accessor to cover your bases because it could
# lead to difficult debugging problems down the line and could compromise the
# security of your data.

# What is confusing to you about these methods?

# I'm plenty comfortable using attr methods within a single class but I am
# still having trouble grasping the concept of passing infomation between
# classes and will need to practice doing so on my own time.



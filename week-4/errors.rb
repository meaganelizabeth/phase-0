# Analyze the Errors

# I worked on this challenge by myself.
# I spent 1 hour on this challenge.

# --- error -------------------------------------------------------

#"Screw you guys " + "I'm going home." = cartmans_phrase

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

#def cartman_hates(thing)
#  while true
#   puts "What's there to hate about #{thing}?"
#  end  
#end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# errors.rb
# 2. What is the line number where the error occurs?
# 170
# 3. What is the type of error message?
# unexpected-end-of-input
# 4. What additional information does the interpreter provide about this type of error?
# expecting keyword_end
# 5. Where is the error in the code?
# At the end of the comment on line 170
# 6. Why did the interpreter give you this error?
# As far as I can tell, Ruby is looking for another "end" statement. The "end"
# on line 16 completes the while statement, meaning the method needs an "end"
# as well. Putting "end" on line 17 fixes this error.

# --- error -------------------------------------------------------

#south_park = "Hi I'm fixing errors"

# 1. What is the line number where the error occurs?
# 38
# 2. What is the type of error message?
# Name Error
# 3. What additional information does the interpreter provide about this type of error?
# undefined local variable or method `south_park' for main:Object
# 4. Where is the error in the code?
# in '<main>'
# 5. Why did the interpreter give you this error?
# south_park is not defined. It can be corrected by defining it with an "=" followed by a value.

# --- error -------------------------------------------------------

#def cartman(value)
#p value
#end

# 1. What is the line number where the error occurs?
# 53
# 2. What is the type of error message?
# No Method Error
# 3. What additional information does the interpreter provide about this type of error?
# undefined method `cartman' for main:Object
# 4. Where is the error in the code?
# in '<main>'
# 5. Why did the interpreter give you this error?
# cartman() is an undefined error. To eliminate it, define cartman()

# --- error -------------------------------------------------------

#def cartmans_phrase(value2)
#  puts "I'm not fat; I'm big-boned!"
#end

#cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
# 70
# 2. What is the type of error message?
# Argument Error
# 3. What additional information does the interpreter provide about this type of error?
# in `cartmans_phrase': wrong number of arguments (1 for 0)
# 4. Where is the error in the code?
# line 70
# 5. Why did the interpreter give you this error?
# When the cartmans_phrase method was defined an argument was never given. Fix
# by adding an argument on line 70.

# --- error -------------------------------------------------------

#def cartman_says(offensive_message)
#  puts offensive_message
#end

#cartman_says(Hellooooo)

# 1. What is the line number where the error occurs?
# 89
# 2. What is the type of error message?
# Argument error
# 3. What additional information does the interpreter provide about this type of error?
# `cartman_says': wrong number of arguments (0 for 1) 
# 4. Where is the error in the code?
# line 93
# 5. Why did the interpreter give you this error?
# Though in this exercise the method is defined, no argument is given for it
# on line 93. Fix by adding an argument.



# --- error -------------------------------------------------------

#def cartmans_lie(lie, name)
#  puts "#{lie}, #{name}!"
#end

#cartmans_lie('A meteor the size of the earth is about to hit Wyoming!', 'Meagan')

# 1. What is the line number where the error occurs?
# 114
# 2. What is the type of error message?
# Argument Error
# 3. What additional information does the interpreter provide about this type of error?
# in `cartmans_lie': wrong number of arguments (1 for 2)
# 4. Where is the error in the code?
# line 114
# 5. Why did the interpreter give you this error?
# On line 114 there is no second argument. The method requires 2 arguments.

# --- error -------------------------------------------------------

#"Respect my authoritay!" * 5

# 1. What is the line number where the error occurs?
# 129
# 2. What is the type of error message?
# Type Error
# 3. What additional information does the interpreter provide about this type of error?
# String can't be coerced into Fixnum
# 4. Where is the error in the code?
# at the "*" on 129"
# 5. Why did the interpreter give you this error?
# You can only multiply by numbers and on line 29 the code is telling the
# program to multiply by a string. Fix by reversing the integer and string.

# --- error -------------------------------------------------------

#amount_of_kfc_left = 20/1


# 1. What is the line number where the error occurs?
# 144
# 2. What is the type of error message?
# Zero Division Error
# 3. What additional information does the interpreter provide about this type of error?
# divided by 0
# 4. Where is the error in the code?
# The "/" on line 144
# 5. Why did the interpreter give you this error?
# You can't divide by 0. To fix, change value to a number that isn't 0.

# --- error -------------------------------------------------------

#require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# 160
# 2. What is the type of error message?
# Load Error
# 3. What additional information does the interpreter provide about this type of error?
# cannot load such file -- /Users/meaganmunch/DBC/phase-0/week-4/cartmans_essay.md
# 4. Where is the error in the code?
# at "require_relative" on line 160
# 5. Why did the interpreter give you this error?
# The file cartmans_essay.md doesn't exist and therefore can't be utiilized by the program.


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.
#
# Which error was the most difficult to read?
#
# The 2nd error (The one that said the error occured on line 170) was the most
# difficult to read. The line number through me way off and I wasn't sure what
# I was looking for.
#
# How did you figure out what the issue with the error was?
#
#I googled the phrases ruby returned in its error message and found some
#StackOverflow conversations where people were encountering the same issue.
#From there I was able to glean that both the "while" and the "def" needed an
#"end" statement.
#
# Were you able to determine why each error message happened based on the code? 
#
#I'm pretty I tackled every error correctly. Most of the issues seemed pretty
#straightforward and solvable with common sense or a basic understanding of
#math.
#
#When you encounter errors in your future code, what process will you follow
#to help you debug?
#
# The same process I used in this exercise, most likely! I'd read where the
# error occurs and if I don't understand why it's happening I'll research the
# error type and any additional information Ruby gives me.

# Reverse Words


# I worked on this challenge by myself.
# This challenge took me 20 minutes.

# Pseudocode
# Write a method
# method input: string
# method output: string with each sentence reversed
# Steps
# define method reverse_words
# takes a string (sentence) as argument
# split sentence string into array of words
# iterate over the array, reversing each word
# turn array of reversed words back into one string
# return modified string



# Initial Solution

# def reverse_words(sentence)
#   array = sentence.split(" ")
#   array.map! do |word|
#     word.reverse
#   end
#   array.join(" ")
# end






# Refactored Solution

def reverse_words(sentence)
  array = sentence.split(" ")
  array.map! {|word| word.reverse}
  array.join(" ")
end





# Reflection

# What concepts did you review in this challenge?

# This challenge reviewed method writing, string manipulation, and iterating
# over arrays.

# What is still confusing to you about Ruby?

# Not a lot. Ruby is probably where I'm strongest of all the things we've
# learned in Phase 0 so far. Writing classes can get a little bit dicey at
# times, though.

# What are you going to study to get more prepared for Phase 1?

# CSS and Javascript, baby!



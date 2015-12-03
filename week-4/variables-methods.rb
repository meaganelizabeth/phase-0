puts 'Hi there. What\'s your first name?'
first_name = gets.chomp
puts 'What\'s your middle name?'
middle_name = gets.chomp
puts 'What\'s your last name?'
last_name = gets.chomp
puts 'Your full name is ' + first_name + ' ' + middle_name + ' ' + last_name + '.'


puts 'What\'s your favorite number?'
num = gets.chomp.to_i
num2 = (num + 1)
puts 'A bigger better number would be ' + num2.to_s

#How do you define a local variable? You define a local variable by setting a
#set of characters that begin with a lower-case character equal to something
#(EX: num_1 = gets.chomp)

#How do you define a method? You define a method using the following three
#syntax options:  def method  
#                 method here   
#                 end  
#                     OR  
#                def method(argument_1,argument_2 etc) 
#                method here  
#                end  
#                      OR  
#                def method argument  
#                method here  
#                end

#What is the difference between a local variable and a method?  Local variable
#are used to store information (the name of the variable points to a value)
#whereas methods are used to execute code using arguments.

#How do you run a ruby program from the command line?  INPUT: ruby
#program_file.rb

#How do you run an RSpec file from the command line?  INPUT: rspec
#spec_file.rb

#What was confusing about this material? What made sense?  I'm a little bit
#cloudy on method syntax (I have much more proactice with variables than
#methods) and was not entirely sure what was happening when I ran rspec but
#overall most of the concepts in this exercise were review for me and easy
#enough to execute.
#
#LINKS TO EXERCISES:
#
# 4.3.1: https://github.com/meaganelizabeth/phase-0/blob/master/week-4/address/my_solution.rb
# 4.3.2: https://github.com/meaganelizabeth/phase-0/blob/master/week-4/math/my_solution.rb
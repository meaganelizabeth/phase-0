# Introduction to Inheritance

# I worked on this challenge [by myself, with: ].


# Pseudocode
#create global and local cohort classes

#global
# #attribute reader for name, start_date, immersive_date, graduation_date
# #currently_in_phase method
# input week_number
# IF week_number is between 0 and 9
# return phase 0
# IF week_number is between 10 and 13
# return phase 1
# IF week_number is between 13 and 17
# return phase 2
# if week_number is greater than 17 
# return graduated
  
#   graduated? method
#   return currently_in_phase(week_number) == graduated

# #local
# # attribute_reader for city, email_list
# # accessor students
# # initialize method
#   takes variable number of names
#   adds each name to students array
#   adds email for each name to email list array
# #add method
# adds student to cohort students array
#     adds email from email list
# #remove method
# removes student from cohort students array
#     removes email from email list

require 'date'

# Initial Solution

class GlobalCohort
  attr_reader :name, :start_date
  def initialize(name, start_date) 
    @name = name
    @start_date = Date.new(start_date)
    @immersive_date = start_date + 63
    @graduation = start_date + 126
  end
  
  def currently_in_phase()
  end
  
  def graduated?()
    date = Date.today
    return date > @graduation
  end

end

class LocalCohort < GlobalCohort
  attr_reader :city 
  attr_accessor :email_list
  attr_accessor :students
  def initialize(city)
    @city = city
    @email_list = {}
    @students = []
  end
  
  def add_student(student, email)
    @students.push(student)
    @email_list[student] = email
  end
  
  def remove_student(student)
    @students.delete(student)
    @email_list.delete(student)
  end
  
  def num_of_students
    @students.length
  end
  
end

squirells = GlobalCohort.new("Squirells", '2016, 11, 7')
chi = LocalCohort.new("Chicago")
puts squirells.start_date


chi.add_student("Meagan", "meagan@mail.com")
chi.add_student("Dave", "dave@mail.com")
chi.add_student("Joe", "joe@mail.com")
puts chi.students
puts chi.email_list

chi.remove_student("Joe")
puts chi.students
puts chi.email_list
puts chi.num_of_students

date = Date.today
date2 = date + 100
puts date
puts date2
puts date < date2

# puts squirells.immersive_date




# Refactored Solution





# Reflection
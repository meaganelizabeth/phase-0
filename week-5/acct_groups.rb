#PSEUDOCODE
#Input: list of names
#Output: sorted accountability groups
#Make array containing all DBC cohort members
#count the number of members in the array
#divide number by four to get the number of accountability groups
#save grouped names in a hash
#create an empty hash 
#number of accountability groups= hash keys  
#empty arrays= hash values, 
#cycle through the array and assign key number to value name


def group(array)
  size=0
  number=0
for x in (4..5) do
  if array.size % x >= 3 || array.size % x == 0
    size=x
    number=array.size/x
  else (array.size % 4 < 3) && (array.size % 5 < 3)
      size=4
      number=array.size / 4 + 1 
  end
end

  groups =Hash.new{|k, v| k[v]=[]}
  group_number=1
  array.each do |item|
    groups[group_number]<<item
    group_number+=1
    if group_number>number
      group_number=1
    end
  end
  puts groups
end

#driver code

people = ["Alvin", "Betsy", "Cecelia", "Dan", "Esther", "Fred", "Ginny", "Hans", "Ida", "John", "Kristin", "Lemmy", "Nana"]
group(people)

# Reflection

#What was the most interesting and most difficult part of this challenge?

#For me the most interesting and difficult part of this this challenge was
#determining what an MVP would look like. This challenge was the one that gave
#me the most trouble this week and I wasn't sure what would be an acceptable
#submission without rspec to guide my way.

#Do you feel you are improving in your ability to write pseudocode and break
#the problem down?

#Yes, absolutely. Pseudocode is definately something that I can feel myself
#getting better at the more I practice it.

#Was your approach for automating this task a good solution? What could have
#made it even better?

#Again, this was the challenge that gave me the most trouble and I could
#definately see having a more elegant solution than the one I'm submitting
#with some more work and a careful inspection of the docs. For now I'm trying
#to be happy with the working solution I have.

#What data structure did you decide to store the accountability groups in and why?

#I decided to use a hash since it provides for 2 data slots, keys and values,
#and the accountabilty group numbers as keys and another data structure (an
#array of names the compose the members of the accounabilty group) as a value.

#What did you learn in the process of refactoring your initial solution? Did
#you learn any new Ruby methods?

#I did not have time to refactor for this challenge.





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


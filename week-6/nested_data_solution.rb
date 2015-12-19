# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
# ============================================================
array[1][2][0]
array[1][1][2]
array[1][1][2][0]

# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================
hash[outer][inner]["almost"][3]
hash[:outer][:inner]["almost"][3]

# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================
nested_data[:array]["array"][:hash]
nested_data[:array][1][:hash]



# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]

number_array.map! do |element|
  if element.kind_of?(Array)
    element.map {|inner|  inner + 5}
  else
    element + 5
  end
end



# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

#What are some general rules you can apply to nested arrays?

#When working with nested arrays count each element carefully and run your
#code often to make sure you're calling on the correct element/value.

#What are some ways you can iterate over nested arrays?

#You can iterate over nested arrays using the same methods you would call on
#flat arrays, but accessing sub-arrays may require utilization of the
#.kind_of? or .is_a? methods to locate arrays within arrays.

#Did you find any good new methods to implement or did you re-use one you were
#already familiar with? What was it and why did you decide that was a good
#option?

#For the iterating over nested structures portion of the challenge I used
#.map, an ennumerable method I'm already quite familiar with, to iterate over
#and alter array objects; to check to see if array elements were arrays
#themselves (locating arrays nested within arrays) I used the kind_of? method,
#which I was previously unfamialiar with.


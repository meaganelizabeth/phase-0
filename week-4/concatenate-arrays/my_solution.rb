# Concatenate Two Arrays

# I worked on this challenge by myself.


# Your Solution Below

def array_concat(array_1, array_2)
  a = 0
  while a < array_2.length
    array_1.push(array_2[a])
    a = a + 1
  end
  return array_1
end
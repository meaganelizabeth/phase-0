# Calculate a Grade

# I worked on this challenge with: Alex Forger


# Your Solution Below
def get_grade(num)
  if num <= 100 && num >= 90
    p "A"
  elsif num < 90 && num >= 80
    p "B"
  elsif num < 80 && num >= 70
    p "C"
  elsif num < 70 && num >= 60
    p "D"
  elsif num >= 0 && num < 60
    p "F"
  else
    puts "This is not a valid grade."
  end
end
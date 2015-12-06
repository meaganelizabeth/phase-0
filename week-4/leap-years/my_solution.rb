# Leap Years

# I worked on this challenge by myself.


# Your Solution Below
def leap_year?(num)
	if (num%4) == 0 && (num%100) != 0 
		return true
	elsif (num%400) == 0
		return true
	else
		return false
	end
end

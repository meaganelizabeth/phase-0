####What does puts do?

Puts returns nil and prints the output to the console with a new line. 

####What is an integer? What is a float?

An integer is a number without a decimal point and a float (or floating-point number) is a number WITH a decimal point.  

What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?

Float division will return a float answer while integer division will only return integers. Integer division rounds down to accomplish this. So, 9/2 using floats will return 4.5 while 9/2 using integers will return 4 (4.5 rounded down to the closest integer.)

Hours in a year:
```
puts 24*365
```

Minutes in a decade:
```
puts 60*24*365*10
```

####How does Ruby handle addition, subtraction, multiplication, and division of numbers?

Addition: Add two numbers by putting the "+" symbol between them (EX: 11 + 7 = 18)
Subtraction: Subtract one number from another by putting the "-" symbol between them (EX: 11 - 7 = 4)
Multiplication: multiply one number by another by putting the "*" symbol between them (EX: 11 * 7 = 77)
Division: Divide one number by another by putting the "/" symbol between them. Dividing integers returns integers and dividing float returns floats (EX: 11/7 = 1; 11.0/7.0 = 1.5714)

####What is the difference between integer and float division?

Float division will return a float answer while integer division will only return integers. Integer division rounds down to accomplish this. So, 9/2 using floats will return 4.5 while 9/2 using integers will return 4 (4.5 rounded down to the closest integer.)

####What are strings? Why and when would you use them?

Strings are groups of letters, digits, punctuation, symbols and spaces in a program. They are held within apostrophes  (EX: 'I love Ruby!') Strings can be used to communicate with the user in a Ruby program.

####What are local variables? Why and when would you use them?

Local variables are objects that store other objects such as strings, integers and floats for later use in a Ruby program. Variable names can be any sequence of letters and numbers as long as the first character is lowercase. Local variables can be used to call on the objects they point to without calling on the object itself.

####How was this challenge? Did you get a good review of some of the basics?

This challenge was a little bit baffling to me bacause I wasn't entirely sure what I was doing yet had no problem getting my programs to pass the rspec tests. Hopefully whatever it is that I'm doing right will become clearer to me in the coming weeks.

####Links to challenge solution files:
[Defining Variables](https://github.com/meaganelizabeth/phase-0/blob/master/week-4/defining-variables.rb)
[Simple String Methods](https://github.com/meaganelizabeth/phase-0/blob/master/week-4/simple-string.rb)
[Local Variables and Basic Arithmetic Operations](https://github.com/meaganelizabeth/phase-0/blob/master/week-4/basic-math.rb)
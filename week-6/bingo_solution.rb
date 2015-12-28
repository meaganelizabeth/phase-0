# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent 2 hours on this challenge.


# Release 0: Pseudocode
# Outline:


# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  # Create an array containing the letters B, I, N G and O
  # generate a random index position
  # called letter is the index position of the letter array
  # Pick a number between 1 and 100
  # Print the letter and number to the console

# Check the called column for the number called.
  # iterate over each array in @bingoboard
  # if the index of the called letter of the array and the called number are equal,
  # change that array's index to "X"

# If the number is in the column, replace with an 'x'
  #see above

# Display a column to the console
  # print the called letter to the console
  # iterate over each array in the bingo board
  # print the index of the array that matches the index of the called letter

# Display the board to the console (prettily)
  # give the display a BINGO heading
  # iterate over each array in the bingo board
  # print the array, replacing the commas with blank spaces

# Initial Solution

# class BingoBoard

#   def initialize(board)
#     @bingo_board = board
#   end

#   def call
#     @bingo = ["B", "I", "N","G", "O"]
#     @position = rand(0..4)
#     @letter = @bingo[@position]
#     @number = rand(1..100)
#     puts "You called #{@letter} #{@number}"
#   end

#   def check
#     @bingo_board.each do |array|
#       if array[@position] == @number
#         puts "You have a match"
#         array[@position] = "X"
#       end
#     end
#   end

#   def show_column
#     puts @letter
#     @bingo_board.each do |array|
#       puts array[@position]
#     end
#   end

#   def show_board
#     puts " B   I   N   G   O "
#     for index in 0..4
#       puts @bingo_board[index].to_s.gsub(",", " ").gsub("\"", " ").gsub("[", " ").gsub("]", " ")
#     end
#   end


# end

# Refactored Solution

class BingoBoard

  def initialize(board)
    @bingo_board = board
  end

  def call
    @bingo = ["B", "I", "N","G", "O"]
    @position = rand(0..4)
    @letter = @bingo[@position]
    @number = rand(1..100)
    puts "You called #{@letter} #{@number}"
  end

  def check
    @bingo_board.each do |array|
      if array[@position] == @number
        puts "You have a match"
        array[@position] = "X"
      end
    end
  end

  def show_column
    puts @letter
    @bingo_board.each {|array| puts array[@position]}
  end

  def show_board
    puts " B   I   N   G   O "
    for index in 0..4
      puts @bingo_board[index].to_s.gsub(",", " ").gsub("\"", " ").gsub("[", " ").gsub("]", " ")
    end
  end


end



#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)


new_game.call
new_game.check
new_game.show_column
new_game.show_board


#Reflection

# How difficult was pseudocoding this challenge? What do you think of your
#pseudocoding style?

# Pseudocoding was actually the most time consuming part of this challenge for
# me. When I read my pseudocode now, after having coded and completed the
# challenge, it all seems very obvious and straightforward, but when I was
# composing my pseudocode I spent a lot of time working through logic and
# scribbling scenerios down on a piece of paper before I was able to
# articulate what I wanted each line of code to acheive. I'm OK with my
# pseudocoding style but am quite positive it could improve.

# What are the benefits of using a class for this challenge?

# Creating a bingo board class allows you to to call the same methods on
# different bingo boards without having to re-write those methods for each
# individual bingo board.

# How can you access coordinates in a nested array?

# To access a value in a nested array, use a compound call: array[first
# layer][second layer]

# What methods did you use to access and modify the array?

# I used a simple .each method to access arrays within an array and .gsub to
# modify the arrays for display.

# Give an example of a new method you learned while reviewing the Ruby docs.
# Based on what you see in the docs, what purpose does it serve, and how is it
# called?

# A new method I learned while reviewing the Ruby docs was .gsub, which can be
# used to replace elements in a string with different elements. The syntax for
# calling it is string.gsub("element to replace", "desired element")

# How did you determine what should be an instance variable versus a local
# variable?

# I used instance variables for values I wanted to access across different
# methods and local variables for values I was using within a single method

# What do you feel is most improved in your refactored solution?

# My refactored solution is pretty much my initial solution with slightly
# cleaner logic.





# Virus Predictor

# I worked on this challenge with Caroline Artz.
# We spent 1 hour on this challenge.

# EXPLANATION OF require_relative

# The require method runs a given file in the location that it is called in
# the program. require_relative does the same thing but the file can be called
# from its path relative to the location of the file it is being called in.
#

require_relative 'state_data'

class VirusPredictor
  #Initialize instances of VirusPredictor and generate instance variables @state, @population and @population_density
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
  #calls methods predicted_deaths and speed_of_spread
  def virus_effects
    predicted_deaths
    speed_of_spread
  p "#{@state} will lose #{@number_of_deaths} people in this outbreak and will spread across the state in #{@speed} months."
  end

  private
 
  # defining a variable number_of_deaths based on value of @population_density
  # prints statement predicting @state's number_of_deaths
  def predicted_deaths()
  # predicted deaths is solely based on population density
    case @population_density
    when 200..1000
      @number_of_deaths = (@population * 0.4).floor
    when 150...200
      @number_of_deaths = (@population * 0.3).floor
    when 100...150
      @number_of_deaths = (@population * 0.2).floor
    when 50...100
      @number_of_deaths = (@population * 0.1).floor
    else
      @number_of_deaths = (@population * 0.05).floor
  end
  end

  
  # defining a variable "speed" (spped = number of months to spread across a state) derived from a given population density
  # prints speed information to screen
  def speed_of_spread() #in months
  # We are still perfecting our formula here. The speed is also affected
  # by additional factors we haven't added into this functionality.
  @speed = 0.0

  case @population_density
    when 200..1000
      @speed += 0.5
    when 150...200
      @speed += 1
    when 100...200
      @speed += 1.5
    when 50...100
      @speed += 2
    else
      @speed += 2.5

    end

  end

end


#=======================================================================

# DRIVER CODE
# initialize VirusPredictor for each state
# what are data type are each of the three inputs?

STATE_DATA.each do |state, state_data|
  VirusPredictor.new(state, state_data[:population_density], state_data[:population]).virus_effects
end



# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#=======================================================================
# Reflection Section

# What are the differences between the two different hash syntaxes shown in
# the state_data file?

# The hash rocket notation, utilized in assigning values to state names,
# allows any type of Ruby object (in this case, a string) to be used as a key.
# The other type of notation, used for the hashes within the state data hash
# storing state population information, requires that the key value be a
# symbol while eliminating the need for a hash rocket ("=>").

# What does require_relative do? How is it different from require?

# require_relative calls on a block of code stored in a different file.
# require_relative calls for accessing a file from it's path relative to the
# file the code is located in, while require does not utilize a relative path.

# What are some ways to iterate through a hash?

# .each, .map, and a number of other ennumerables can be called on hashes to
# .iterate through them.

# When refactoring virus_effects, what stood out to you about the variables,
# if anything?

# Nothing in particular stood out about the variables in virus_effects, other
# than that they are instance variables for the class VirusPredictor.

# What concept did you most solidify in this challenge?

# I definately feel a lot more confident in my ability to iterate over and
# access values in nested hashes after completing this challenge. My ability
# to write classes is still a little shaky though and I feel like I should
# practice more of it on my own time.




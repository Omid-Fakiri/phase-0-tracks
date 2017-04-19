# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [3] hours on this challenge.

# EXPLANATION OF require_relative
#require_relative references a specific file in current directory.
#require reaches out to the ruby path to require a file.

require_relative 'state_data'

class VirusPredictor

  #assigns the 3 instance variables, takes in the 3 parameters.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  #works as a runner method by combining these 2 methods into it.
  def virus_effects
    predicted_deaths#(@population_density, @population, @state)
    speed_of_spread#(@population_density, @state)
  end

  private

  #creates conditional statements and returns number_of_deaths
  #based on the value of population density.
  def predicted_deaths#(population_density, population, state)
    # predicted deaths is solely based on population density

    # case number_of_deaths 
    # when @population_density >= 200 then (@population * 0.4).floor
    # when @population_density >= 150 then (@population * 0.3).floor
    # when @population_density >= 100 then (@population * 0.2).floor
    # when @population_density >= 50 then (@population * 0.1).floor
    # else 
    #   (@population * 0.05).floor
    # end

    # case number_of_deaths 
    # when @population_density >= 200 then (@population * 0.4).floor
    # when @population_density >= 150 && @population_density < 200 then (@population * 0.3).floor
    # when @population_density >= 100 && @population_density < 150 then (@population * 0.2).floor
    # when @population_density >= 50 && @population_density < 100 then (@population * 0.1).floor
    # else 
    #   (@population * 0.05).floor
    # end

    case 
    when @population_density >= 200 then number_of_deaths = (@population * 0.4).floor
    when @population_density >= 150 && @population_density < 200 then number_of_deaths = (@population * 0.3).floor
    when @population_density >= 100 && @population_density < 150 then number_of_deaths = (@population * 0.2).floor
    when @population_density >= 50 && @population_density < 100 then number_of_deaths = (@population * 0.1).floor
    else 
      number_of_deaths = (@population * 0.05).floor
    end

    # if @population_density >= 200
    #   number_of_deaths = (@population * 0.4).floor
    # elsif @population_density >= 150
    #   number_of_deaths = (@population * 0.3).floor
    # elsif @population_density >= 100
    #   number_of_deaths = (@population * 0.2).floor
    # elsif @population_density >= 50
    #   number_of_deaths = (@population * 0.1).floor
    # else
    #   number_of_deaths = (@population * 0.05).floor
    # end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  #creates conidtional statements and returns speed of spread
  #based on the value of population density.
  def speed_of_spread#(population_density, state) #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    # case speed
    # when @population_density >= 200 then += 0.5
    # when @population_density >= 150 && @population_density < 200 then += 1
    # when @population_density >= 100 && @population_density < 150 then += 1.5
    # when @population_density >= 50 && @population_density < 100 then += 2
    # else
    #   += 2.5
    # end

    case  
    when @population_density >= 200 then speed += 0.5
    when @population_density >= 150 && @population_density < 200 then speed += 1
    when @population_density >= 100 && @population_density < 150 then speed += 1.5
    when @population_density >= 50 && @population_density < 100 then speed += 2
    else
      speed += 2.5
    end

    # if @population_density >= 200
    #   speed += 0.5
    # elsif @population_density >= 150
    #   speed += 1
    # elsif @population_density >= 100
    #   speed += 1.5
    # elsif @population_density >= 50
    #   speed += 2
    # else
    #   speed += 2.5
    # end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

STATE_DATA.each do |state, state_info|
  VirusPredictor.new(state, state_info[:population_density], state_info[:population]).virus_effects
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
=begin
Reflection Section
This is for Release 8

1. The first hash uses the rocket symbols, while the second hash uses the ":" symbols.

2. "require_relative" references a specific file in current directory, while "require" reaches out to the ruby path to require a file. 

3. You can iterate through a hash with the each, each_key, and each_value methods.  The each will help you iterate through the key & value pair,
the each_key will help you iterate through the keys, and the each_value will help you iterate through the values.

4. I noticed that some were instance variables, and some others were local variables.  I also noticed that some of them were being used
repeatedly as arguments and parameters when it was not necessary.

5. I mostly solidified how to iterate through a hash. 
=end
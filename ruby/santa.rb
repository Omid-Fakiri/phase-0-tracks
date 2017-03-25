
class Santa

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie}!"
	end

	def initialize(gender, ethnicity)
		puts "Initializing Santa instance..."
		@gender = gender
		@ethnicity = ethnicity
		@rank = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end

	def age
		@age
	end

	def ethnicity
		@ethnicity
	end

	def gender=(new_gender)
		@gender = new_gender
	end

	def celebrate_birthday(age)
		@age += 1
	end
	
  	def get_mad_at(reindeer)
    	@rank.delete(reindeer)
    	@rank << (reindeer) 
  	end
end

santa = Santa.new("gender", "ethnicity")
puts santa.speak
puts santa.eat_milk_and_cookies("chocolate chip cookie")

santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
example_genders.length.times do |i|
  santas << Santa.new(example_genders[i], example_ethnicities[i])
end

p santas
santa = Santa.new("male", "black")
p santa.age
p santa.ethnicity
p santa.gender=("half-man, half-robot")
p santa.get_mad_at("Rudolph")
p santa.celebrate_birthday(6) 
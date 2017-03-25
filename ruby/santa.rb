
class Santa
	attr_reader :age, :ethnicity
	attr_accessor :gender

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
		@age = rand(140)
	end

	def celebrate_birthday(age)
		@age += 1
	end
	
  	def get_mad_at(reindeer)
    	@rank.delete(reindeer)
    	@rank << (reindeer) 
  	end

  	def reindeer_ranking
  		@rank
  	end
end

genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

index = 0
while index < 50000
	santa = Santa.new(genders.sample, ethnicities.sample)
	santas = []
	santas << santa
		santas.each do
			p "This Santa is #{santa.age} years old."
			p "This Santa is identifies as: #{santa.gender}, #{santa.ethnicity}."
			p santa.get_mad_at("Dancer")
			p "This Santa is now #{santa.celebrate_birthday(@age)} after the birthday."
		end
	index += 1
end

santas

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
		@age = 0
	end

	def celebrate_birthday(age)
		age += 1
	end

	def get_mad_at(reindeer)
		case reindeer
			when "Rudolph" then @rank = ["Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen", "Rudolph"] 		
			when "Dasher" then @rank = ["Rudolph", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen", "Dasher"]
			when "Dancer" then @rank = ["Rudolph", "Dasher", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen", "Dancer"]
			when "Prancer" then @rank = ["Rudolph", "Dasher", "Dancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen", "Prancer"]
			when "Vixen" then @rank = ["Rudolph", "Dasher", "Dancer", "Prancer", "Comet", "Cupid", "Donner", "Blitzen", "Vixen"]
			when "Comet" then @rank = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Cupid", "Donner", "Blitzen", "Comet"]
			when "Cupid" then @rank = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Donner", "Blitzen", "Cupid"]
			when "Donner" then @rank = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Blitzen", "Donner"]
			else @rank = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		end
		puts "#{reindeer} behaved badly.  So, the current reindeer ranking is: #{@rank}"
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
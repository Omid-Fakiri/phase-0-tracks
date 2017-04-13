=begin
This is for Release 0
class Santa
	def initialize
		puts "Initializing Santa instance ..."
	end

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie} cookie!"
	end
end

santa = Santa.new

santa.speak
santa.eat_milk_and_cookies("chocolate chip")
=end


class Santa
	attr_reader :age, :ethnicity
	attr_accessor :gender

	def initialize(gender, ethnicity)
		puts "Initializing Santa instance ..."
		@gender = gender
		@ethnicity = ethnicity
		@rank = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = rand(140)
	end

	def speak
		p "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie)
		p "That was a good #{cookie} Cookie!"
	end

	def celebrate_birthday(age)
		@age += 1
	end

	def get_mad_at(reindeer)
		@rank.delete(reindeer)
		@rank << reindeer
	end

end

genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
reindeer = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
cookies = ["Chocolate Chip", "Chocolate", "Oatmeal Chocolate Chip", "Peanut Butter", "Snickerdoodle", "Sugar", "Ginger", "Oatmeal Raisin", "Macaroon", "Peanut Butter Blossom", "White Chocolate Macadamia Nut"]


index = 0
while index < 50000
puts ""
santa = Santa.new(genders.sample, ethnicities.sample)
santas = []
santas << santa
	santas.each do
			puts "="*90
			puts "This Santa is #{santa.age} years old."
			puts "="*90
			puts "This Santa is identifies as: #{santa.gender}, #{santa.ethnicity}."
			puts "="*90
			puts "This Santa says:"
			santa.speak
			puts "="*90
			puts "This is the reindeer ranking for this Santa:"
			p santa.get_mad_at(reindeer.sample)
			puts "="*90
			puts "This Santa now says:"
			santa.eat_milk_and_cookies(cookies.sample)
			puts "="*90
			puts "This Santa is now #{santa.celebrate_birthday(@age)} years old after the birthday."
			puts "="*90
	end
	index += 1
end

santas
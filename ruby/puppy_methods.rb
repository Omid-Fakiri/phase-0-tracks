#This is for Release 0
class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(bark)
  	bark.times do p "Woof!" end
  end

  def roll_over
  	puts "rolls over"
  end

  def dog_years(age)
  	if age < 0
  			puts("Age must be positive number.")
		elsif age == 1
			dog = age * 15
		elsif age == 2
  			dog = age * 12
		else
			dog = 24 + (age - 2)*4
		end
	puts "The dog's age in dog's years is, #{dog}."
  end

end


puppy = Puppy.new
puts puppy.fetch("ball")
puts puppy.speak(5)
puts puppy.roll_over
puts puppy.dog_years(24)







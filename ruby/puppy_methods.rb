#This is for Release 0
class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(bark)
  	bark.times do p "Woof!" end
  end

end


puppy = Puppy.new
puts puppy.fetch("ball")
puts puppy.speak(5)







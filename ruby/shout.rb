# module Shout
#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end

#   def self.yelling_happily(words)
#   	words + "!!!" + " :)"
#   end
# end

# puts Shout.yell_angrily("I am angry")
# puts Shout.yelling_happily("I am happy")

module Shout
	def yell(words)
		puts "I am so #{words}, I don't know how to !"
	end
end

class Angry
	include Shout
end

class Happily
	include Shout
end

angry = Angry.new
angry.yell("angry")

happily = Happily.new
happily.yell("happy")

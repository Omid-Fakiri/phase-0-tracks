# module Shout
# 	def yell_angrily(words)
# 		words + "!!!" + " :("
# 	end

# 	def yell_happily(words)
# 		words + "!!!" + " :)"
# 	end
# end

# Shout.yell_angrily("I am so angry")
# Shout.yell_happily("I am so happy")

module Shout
	def yell(words)
		puts "I am so #{words}"
	end
end

class Angry
	include Shout
end

class Happy
	include Shout
end

angry = Angry.new
angry.yell("angry!!! :(")

happy = Happy.new
happy.yell("happy!!! :)")


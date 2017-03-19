=begin
-This is for Release 0.
-This will be an attempt to create a fake name from the name, "James Bond".
-First, the name needs to be reversed, so it is read, "Bond James"
-Then, the name needs to be read as, "Cupf Kenit"
=end

spy = %w[James Bond]
str = ""

spy.reverse_each { |new| str += "#{new} " }

#puts str

puts str.gsub(/[abcdefghijklmnopqrstuvwxyzABCDEFGIJKLMNOPQRSTUVWXYZ]/, 'a' => 'e', 'e' => 'i', 'i' => 'o', 'o' => 'u', 'u' => 'a', 'A' => 'E', 'E' => 'I', 'I' => 'O', 'O' => 'U', 'U' => 'A', 'b' => 'c', 'c' => 'd', 'd' => 'f', 'f' => 'g', 'g' => 'h', 'h' => 'j', 'j' => 'k', 'k' => 'l', 'l' => 'm', 'm' => 'n', 'n' => 'p', 'p' => 'q', 'q' => 'r', 'r' => 's', 's' => 't', 't' => 'v', 'v' => 'w', 'w' => 'x', 'x' => 'y', 'y' => 'z', 'z' => 'b', 'B' => 'C', 'C' => 'D', 'D' => 'F', 'F' => 'G', 'G' => 'H', 'H' => 'J', 'J' => 'K', 'K' => 'L', 'L' => 'M', 'M' => 'N', 'N' => 'P', 'P' => 'Q', 'Q' => 'R', 'R' => 'S', 'S' => 'T', 'T' => 'V', 'V' => 'W', 'W' => 'X', 'X' => 'Y', 'Y' => 'Z', 'Z' => 'B')

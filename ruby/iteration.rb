=begin
This is for Release 0
def numbers
    n1 = 2
    n2 = 5
    n3 = 10
    puts "Before yield"
    yield(n1, n2, n3)
    puts "After yield"
end

numbers { |a, b, c| puts (a + b + c) }


This is for Release 1
array:
helens_favorite_movies = ["Before Sunset", "Roman Holiday", "Whiplash"]

hash:
favorite_movies_ratings = {"Before Sunset" => 9, "Roman Holiday" => 8, "Whiplash" => 8.5}

p helens_favorite_movies

helens_favorite_movies.each do |film|
	#puts film.upcase
end

p favorite_movies_ratings

favorite_movies_ratings.each do |film, rating|
	puts film.upcase
end

p favorite_movies_ratings

p helens_favorite_movies

p helens_favorite_movies

helens_favorite_movies.map! do |film|
	#film.upcase
end

p helens_favorite_movies
=end

#This is for Release 2
num = [1, 2, 3, 4, 5]
numtext = {"one" => 1, "two" => 2, "three" => 3, "four" => 4, "five" => 5}

#This is problem #1
num.delete_if {|num| num % 2 == 0}
p num

numtext.delete_if {|num, numtext| num.length > 4}
p numtext

#This is problem #2
num.select! {|num| num % 2 == 0}
p num

numtext.select! {|num, numtext| num.length > 4}
p numtext

#This is problem #1
num.keep_if {|num| num % 2 == 0}
p num

numtext.keep_if {|num, numtext| num.length > 4}
p numtext

#This is problem #4
num = num.drop_while {|num| num % 2 == 0}
p num

numtext = numtext.drop_while {|num, numtext| num.length < 4}
p numtext

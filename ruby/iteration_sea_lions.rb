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
=end

#This is for Release 1
#array:
favorite_movies = ["Before Sunset", "Roman Holiday", "Whiplash"]

#hash:
favorite_movies_ratings = {"Before Sunset" => 9, "Roman Holiday" => 8, "Whiplash" => 8.5}

p favorite_movies

favorite_movies.each do |film|
	puts film.upcase
end

p favorite_movies_ratings

favorite_movies_ratings.each do |film, rating|
	puts film.upcase
end

p favorite_movies_ratings

p favorite_movies

p favorite_movies

favorite_movies.map! do |film|
	film.upcase
end

p favorite_movies

#This is for Release 0
def numbers
    n1 = 2
    n2 = 5
    n3 = 10
    puts "Before yield"
    yield(n1, n2, n3)
    puts "After yield"
end

numbers { |a, b, c| puts (a + b + c) }
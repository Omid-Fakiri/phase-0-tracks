#This is for Release 0

def search_array(array, numbers)

  index= 0
  answer = nil

  while index < array.length && answer == nil
    if array[index] == numbers
      #return index
      answer = index
    else
      #return nil
      answer = nil
    end
    index +=1
  end
answer
end

array = [5,10,15,20,25]

p search_array(array,25)
p search_array(array,10)
p search_array(array,3)

#This is for Release 1

def fib(x)
  array = [0]
  (1..x-1).each do |num|
    if num == 1
      array.push 1
    elsif num
      array.push(array[num-1] + array[num-2])
    end
  end
  array
end

p fib(100)
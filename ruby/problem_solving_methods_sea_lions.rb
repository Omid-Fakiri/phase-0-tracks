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

#This is for Release 2
=begin
  Bubble sorting, although considered to be very inefficient in practice, is a perfect 
  one to start learning from. This method takes the first 2 elements of the array, and d
  determines if they are in order. If so, it will go to the 2nd and 3rd elements, 3rd and 4th,
  so on. Each time it encounters a pair in the array, it will swap the elements if necessary.
  It will keep doing this until it passes through the array 1 full time without making any
  swapping changes.  
  
  We were able to find the extended definition, explanations, pseudocode, and visual 
  demonstration on wikipedia. We felt that the combination of everything listed helped us
  grasp the concepts. The visual demonstration verified the definition and explanation.
  
  The pseudocode provided in wikipedia is very similar to what we've been exposed to in
  Ruby. Parts of it made us excited because we understood it.  But, other parts left us
  confused, and hopeful that we can understand them sooner than later. With that said, on
  somedays, the confusing part can leave us completely unsure if we're cut out for this
  sort of thing.

  Pseudocode (Bubble-sort): Take the first 2 numbers, and see if they need to be swapped.
  If so, make the swap, and then move on to the 2nd and 3rd numbers.  If not, leave the 
  numbers alone, and move on to the 2nd and 3rd numbers. Take the 2nd and 3rd numbers, and see
  if they need to be swapped. If so, make the swap, and then move on to the 3rd and 4th
  numbers. If not, leave the numbers alone, and move on to the 3rd and 4th numbers.
=end

p numbers = [5, 3, 9, 4, 2, 6, 1, 8, 7]
p numbers.sort
#It is possible to reverse the order by doing the code below
p numbers.sort { |a,b| b <=> a }
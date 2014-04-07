def add(num1,num2)
  num1 + num2
end

def subtract(num1,num2)
  num1 - num2
end

def sum(sum_array)
  if sum_array == []
    sum = 0
  else
    sum = sum_array.inject(:+)
  end
  sum
end

def multiply(*args)

  #creates an array of length = 1. that is the product of our parameters
  product = *args.inject(:*)

  #returns the number in the array
  product[0]
end

def factorial(num)
  if num == 0
    1
  else
    #do something
  end    
end

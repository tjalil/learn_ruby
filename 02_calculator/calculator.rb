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
  ans = []
  if num == 0
    ans = 1
  else
    while num != 0
      ans << num
      num -= 1
    end
    ans.inject(:*)
  end   
end

#alternate solution with ruby method 'downto'
# def factorial(num)
#   ans = 1
#   num.downto(1) do |nums|
#     ans *= nums
#   end
#   ans
# end

# write your code here

def add(a, b)
  a + b
end

def subtract(a, b)
  a - b
end

def sum(elements)
  elements.inject(0) { |sum, i| sum + i }
end

def multiply(elements)
  elements.inject(1) { |product, i| product * i }
end

def power(number, exponent)
  x = 1
  exponent.times do
    x *= number
  end
  x
end

def factorial(number)
  return 1 if number <= 0 # use the guard clause

  factorial_of_number = 1
  while number > 0
    factorial_of_number *= number
    number -= 1
  end
  factorial_of_number
end

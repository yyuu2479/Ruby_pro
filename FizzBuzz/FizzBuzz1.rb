def fizz_buzz(number)
  if number % 15 == 0
    "FizzBuzz"
  elsif number % 5 == 0
    "Buzz"
  elsif number % 3 == 0
    "Fizz"
  else
    number
  end
end

puts fizz_buzz(1)
puts fizz_buzz(2)
puts fizz_buzz(3)
puts fizz_buzz(4)
puts fizz_buzz(5)
puts fizz_buzz(6)
puts fizz_buzz(15)
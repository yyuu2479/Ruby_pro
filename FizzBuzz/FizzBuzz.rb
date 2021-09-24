def fizz_buzz(number)
  if number % 15 == 0
    puts "FizzBuzz"
  elsif number % 5 == 0
    puts "Buzz"
  elsif number % 3 == 0
    puts "Fizz"
  else
    puts number
  end
end

puts fizz_buzz(1)
puts fizz_buzz(2)
puts fizz_buzz(3)
puts fizz_buzz(4)
puts fizz_buzz(5)
puts fizz_buzz(6)
puts fizz_buzz(15)

a=b=100
p a
p b

i = 10

puts "#{i} => #{i.to_s(16)}"

puts "He said, \"Don't speak\""

p 1_000_000_000
n = 1
p -n
p n.to_f
p 2 ** 3
p 2 * 3

p 0.1 * 3.0 == 0.3
p (0.1r * 3.0r).to_f
a = 0.1
b = 0.3
p a.rationalize * b.rationalize

t1 = true
t2 = true
f3 = false
f4 = false

p t1 && (f3 || t2) && f4
p (t1 && t2) || (f3 && f4)

n = 11
if n > 10
  p "10より大きい"
else
  p "10以下"
end

country = "italy"
greeting =
if  country == 'japan' then "こんにちは"
elsif country == 'us' then "Hello"
elsif country == 'italy' then "ciao"
else '???'
end

p greeting

point = 7
day = 1


p  point *= 5 if day == 1
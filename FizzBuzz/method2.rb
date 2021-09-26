def greeting(country = "japan")
  if country == 'japan'
    'こんにちは'
  else
    'hello'
  end
end
p greeting

def default(a, b, c = 0, d = 0)
  "a = #{a}, b = #{b}, c = #{c}, d = #{d}"
end

p default(1, 2)
p default(1, 2, 3)
p default(1, 2, 3, 4)

def foo(time = Time.now, message = bar)
  puts "time: #{time}, message: #{message}"
end
def bar
  'BAR'
end
foo

p ''.empty?
p 'a'.empty?

p ''.include?('a')
p 'a'.include?('a')

p 1.odd?
p 2.odd?

p 1.even?
p 2.even?

p nil.nil?


a = "ruby"
p a.upcase
p a

p a.upcase!
p a

def reverse_upcase!(s)
  s.reverse!.upcase!
end

s = "ruby"
p reverse_upcase!(s)
p s
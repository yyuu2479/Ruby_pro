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
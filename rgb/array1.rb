# a = []
# b = [2, 3]

# a.push(1)
# a.push(*b)
# p a

# def greeting(*names)
#   "#{names.join("と")}、こんにちは！！"
# end

# p greeting("田中さん")
# p greeting("田中さん", "佐藤さん")

# a = [1, 2, 3]
# p [*a]
# p [-1, 0, *a, 4, 5]

# [1, 2, 3] == [1, 2, 4]

# p %w(big\ apple melon orange)

# p 'Ruby'.chars
# p 'ruby,java,perl,php'.split(',')

# fruits = ['apple', 'orange', 'malon']
# fruits.map.with_index(1) {|fruits, i| puts "#{i}: #{fruits}"}

# dimensions = [
#   [10,20],
#   [30,40],
#   [50,60]
# ]
# areas = []
# dimensions.each do |length, width|
#   areas << length * width
# end
# p areas

# dimensions = [
#   [10,20],
#   [30,40],
#   [50,60]
# ]
# dimensions.each_with_index do |(length, width), i|
#   puts "length: #{length}, width: #{width}, i: #{i}"
# end

# names = ["加藤", "佐藤", "田中"]
# p join_names = names.map {|name| "#{name}さん"}.join("と")

# sum = 0
# 5.times { sum += 1 }
# p sum

# a = []
# 10.upto(14) {|n| a << n }
# p a

# b = []
# 14.downto(10) {|n| b << n}
# p b

# a = []
# 1.step(10, 2) {|n| a << n}
# p a

# b = []
# 10.step(1, -2) {|n| b << n}
# p b

# a = []
# a << 1 while a.size < 5
# p a

# a = [10, 20, 30, 40, 50]
# a.delete_at(-1) until a.size <= 3
# p a

# numbers = [1,2,3,4]
# sum = 0
# for n in numbers
#   sum_value = n.even? ? n * 10 : n
#   sum += sum_value
# end
# p sum_value
# p sum

# numbers = [1,2,3,4,5].shuffle
# numbers.each do |n|
#   puts n
#   break if n == 5
# end

fruits = ["apple", "orange", "melon"]
numbers = [1,2,3]
# fruits.each do |f|
#   numbers.shuffle.each do |n|
#     puts "#{f}, #{n}"
#     break if n == 3
#   end
# end

# catch :done do
#   fruits.shuffle.each do |fruit|
#     numbers.shuffle.each do |n|
#       puts "#{fruit}, #{n}"
#       if fruit == 'orange' && n == 3
#         throw :done
#       end
#     end
#   end
# end

# fruits.each do |fruit|
#   numbers.each do |n|
#     next if n.even?
#     puts "#{fruit}, #{n}"
#   end
# end

name1 = name2 = "foo"
p name1
p name2

a = "Ruby".chars
p a
p a.join

a1 = Array.new(5) { "default" }
p a1

fruits = [ "apple", "orange", "melon" ]
fruits.each_with_index { |fruit, i| puts "#{i}: #{fruit}" }


# quotient, remainder = 14.divmod(3)
# puts "商は#{quotient}, 余りは#{remainder}"

# numbers = [1,2,3,4]
# sum = 0
# numbers.each do |number|
#   sum_value = number.even? ? number * 10 : number
#   sum += sum_value
# end
# p sum

# a = [1,2,3,1,2,3]
# a.delete_if { |n| n.odd? }
# p a

# p b = [1,2,3,4,5,6]
# c = b.map {|n| n * 10}
# p c

# even_number = numbers.select { |number| number.even? }
# p even_number

# odd_number = numbers.reject { |number| number.even? }
# p odd_number

# sum = numbers.inject(0) { |result, n| result + n }
# p sum

# weeks = ["mon", "tue", "wed", "thu", "fri", "sat"]
# day_week = weeks.inject("sun") { |week, s| week + s }
# p day_week

# p ["ruby", "java", "php"].map { |s| s.upcase }
# p ["ruby", "java", "php"].map(&:upcase)

# p [1,2,3,4,5,6].select { |n| n.odd? }
# p [1,2,3,4,5,6].select(&:odd?)

# p [9, 10, 11, 12].map {|n| n.to_s(16)}

# a = [1,2,3,4,5]
# p a[1..3]

# s = "abcdefg"
# p s[1..3]

# def liquid?(temperature)
#   (0...100).include?(temperature)
# end
# p liquid?(-1)
# p liquid?(50)
# p liquid?(100)

# def charge(age)
#   case age
#     when 0..5
#       0
#     when 6..12
#       300
#     when 13..18
#       600
#     else
#       1000
#   end
# end
# p charge(3)
# p charge(12)
# p charge(16)
# p charge(25)

# p (1..5).to_a
# p (1...5).to_a

# p ("a".."e").to_a
# p ("a"..."e").to_a

# p [*1..5].to_a

# sum = 0
# (1..4).each { |n| sum += n }
# p sum

# numbers = []
# (1..10).step(2) { |n| numbers << n }
# p numbers

a = [1,2,3,4,5]
p a
p a[1,3]
p a[1..3]
p a.values_at(0, 2, 4)
p a[a.size - 1]
p a[-1]
p a[-2]
p a[-2, 2]
p a.first
p a.first(2)
p a.last
p a.last(2)

b = [6,7,8,9,10]
a.concat(b)
p a

a = [1]
b = [2, 3]
p a + b
p b
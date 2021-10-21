p [].class

a = [1,2,3]
a[1] = 20
a[4] = 30
a << 5
p a.delete_at(1)
p a

p b = ['apple', 'orange', 'melon']

p c = ['apple', 1, 'orange', 2, 'melon', 3]

p d = [[10, 20, 30], [40, 50, 60], [70, 80, 90]]

quotient, remainder = 14.divmod(3)
puts "商は#{quotient}, 余りは#{remainder}"
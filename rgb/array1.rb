# a = []
# b = [2, 3]

# a.push(1)
# a.push(*b)
# p a

def greeting(*names)
  "#{names.join("と")}、こんにちは！！"
end

p greeting("田中さん")
p greeting("田中さん", "佐藤さん")

a = [1, 2, 3]
p [*a]
p [-1, 0, *a, 4, 5]

[1, 2, 3] == [1, 2, 4]

p %w(big\ apple melon orange)

p 'Ruby'.chars
p 'ruby,java,perl,php'.split(',')

fruits = ['apple', 'orange', 'malon']
fruits.each_with_index { |fruits, i| puts "#{i}: #{fruits}"}
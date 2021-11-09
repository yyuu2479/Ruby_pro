# users = []
# users << { first_name: 'Alice', last_name: 'Ruby', age: 20 }
# users << { first_name: 'Bob', last_name: 'Python', age: 30 }

# class User
#   attr_reader :first_name, :last_name, :age

#   def initialize(first_name, last_name, age)
#     @first_name = first_name
#     @last_name = last_name
#     @age = age
#   end

#   def full_name
#     "#{@first_name} #{@last_name}"
#   end
# end

# users = []
# users << User.new("Alice", "Ruby", 20)
# users << User.new("Bod", "Python", 30)

# users.each do |user|
#   puts "氏名: #{user.full_name}, 年齢: #{user.age}"
# end

class User
  attr_accessor :name, :age

  def initialize(name)
    @name = name
  end

  def self.create_users(names)
    names.map {|name| User.new(name)}
  end

  def hello
    "Hello, I am #{@name}."
  end
end

names = ["アリス", "ボブ", "ケント"]
users = User.create_users(names)
users.each do |user|
  puts user.hello
end

class Product
  DEFAULT_PRICE = 0

  attr_reader :name, :price

  def initialize(name, price = DEFAULT_PRICE)
    @name = name
    @price = price
  end
end

product = Product.new("A free movie")
puts product.price
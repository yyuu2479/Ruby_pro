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

# class User
#   attr_accessor :name, :age

#   def initialize(name)
#     @name = name
#   end

#   def self.create_users(names)
#     names.map {|name| User.new(name)}
#   end

#   def hello
#     "Hello, I am #{@name}."
#   end
# end

# names = ["アリス", "ボブ", "ケント"]
# users = User.create_users(names)
# users.each do |user|
#   puts user.hello
# end

# class Product
#   DEFAULT_PRICE = 0

#   attr_reader :name, :price

#   def initialize(name, price = DEFAULT_PRICE)
#     @name = name
#     @price = price
#   end
# end

# product = Product.new("A free movie")
# puts product.price

# class Product
#   # attr_reader :name, :price

#   # def initialize(name, price)
#   #   @name = name
#   #   @price = price
#   # end

#   # def self.format_price(price)
#   #   "#{price}"
#   # end

#   # def to_s
#   #   "name: #{name}, price: #{price}"
#   # end

#   SOME_NAMES = ["Foo", "Bar", "Baz"].map(&:freeze).freeze
# end

# class User
#   attr_reader :name, :weight

#   def initialize(name, weight)
#     @name = name
#     @weight = weight
#   end

#   def heavier_than?(other_user)
#     other_user.weight < @weight
#   end

#   protected :weight
# end


class Product
  attr_reader :name

  DEFAULT_PRICE = 0
  NAME = "product"
  SOME_NAMES = ["Foo", "Bar", "Baz"].map(&:freeze).freeze

  @name = "Product"

  def initialize(name)
    @name = name
  end

  def self.name
    @name
  end

  def self.names_without_foo(names = SOME_NAMES)
    names.delete('Foo')
    names
  end
end

class DVD < Product
  @name = "DVD"

  def self.name
    @name
  end

  def upcase_name
    @name.upcase
  end
end

puts Product.name
puts DVD.name

product = Product.new("A greet movie")
puts product.name

dvd = DVD.new("An awesome film")
puts dvd.name
puts dvd.upcase_name

puts Product.name
puts DVD.name
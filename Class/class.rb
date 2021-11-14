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

# 演算子の挙動を独自に定義する
# class Product
#   attr_reader :code, :name

#   def initialize(code, name)
#     @code = code
#     @name = name
#   end

#   def ==(other)
#     if other.is_a?(Product)
#       code == other.code
#     else
#       false
#     end
#   end
# end

# a = Product.new("A-0001", "A greet movie")
# b = Product.new("B-0001", "An awesome film")
# c = Product.new("A-0001", "A great movie")

# puts a == b
# puts a == c

# # ネストしたクラス
# class User
#   class BloodType
#     attr_reader :type

#     def initialize(type)
#       @type = type
#     end
#   end
# end

# blood_type = User::BloodType.new("B")
# puts blood_type.type
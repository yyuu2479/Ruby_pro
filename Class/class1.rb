# a = "abc"
# b = "def"
# c = a

# p a.equal?(b)
# p a.equal?(c)

# # モンキーパッチ
# class User
#   def initialize(name)
#     @name = name
#   end

#   def hello
#     "Hello, #{@name}"
#   end
# end

# class User
#   # def hello
#   #   "#{@name}さん、こんにちは！！"
#   # end

#   alias hello_original hello

#   def hello
#     "#{hello_original}　じゃなくて、 #{@name}さん、こんにちは"
#   end
# end


# # クラスメゾット
# class User
# end

# def User.hello
#   "Hello!"
# end

# class << User
#   def hi
#     "Hi!"
#   end
# end

# p User.hello
# p User.hi

# # 特異メゾット
# alice = "I am alice."

# def alice.hello
#   "Hello."
# end

# class << alice
#   def hi
#     "Hi."
#   end
# end

# ダックタイピング
# def display_name(object)
#   if object.respond_to?(:name)
#     puts "Name is <<#{object.name}>>"
#   else
#     puts "No name."
#   end
# end

# class User
#   def name
#     "Alice"
#   end
# end

class Product
  def initialize(name, price)
    @name = name
    @price = price
  end

  def stock?
    raise "サブクラスでstock?メゾットを実装してください！"
  end

  def display_text
    stock = stock? ? "あり" : "なし"
    "商品名: #{@name} 価格: #{@price} 在庫: #{stock}"
  end
end

class DVD
  def stock?
    true
  end
end

dvd = DVD.new
p dvd.is_a?(DVD)
# メゾットの探索ルール
# module A
#   def to_s
#     "<A> #{super}"
#   end
# end

# module B
#   def to_s
#     "<B> #{super}"
#   end
# end

# class Product
#   def to_s
#     "<Product> #{super}"
#   end
# end

# class DVD < Product
#   include A
#   include B

#   def to_s
#     "<DVD> #{super}"
#   end
# end

# dvd = DVD.new
# p dvd.to_s
# p DVD.ancestors

# モジュールに他のモジュールをincludeする
# module Greeting
#   def hello
#     'hello.'
#   end
# end

# module Aisatsu
#   # 別のモジュールをincludeする
#   include Greeting

#   def konnichiwa
#     'こんにちは。'
#   end
# end

# class User
#   # Aisatsuモジュールだけをincludeする
#   include Aisatsu
# end

# user = User.new
# p user.hello
# p user.konnichiwa
# p User.ancestors

# prependでミックスイン
# module A
#   def to_s
#     "<A> #{super}"
#   end
# end

# module B
#   def to_s
#     "<A> #{super}"
#   end
# end

# class Product
#   prepend A

#   def to_s
#     "<Product> #{super}"
#   end
# end

# product = Product.new
# p product.to_s
# p Product.ancestors

# # prependで既存メゾットを置き換える
# class Product
#   def name
#     "A greet film."
#   end
# end

# module NameDecorator
#   def name
#     "<<#{super}>>"
#   end
# end

# class Product
#   prepend NameDecorator
# end

# product = Product.new
# p product.name
# p Product.ancestors

# # refinementsの使い方(変更の有効範囲を限定できる)
# module StringShuffle
#   # refinementsが目的のため、refineメゾットを使う
#   refine String do
#     def shuffle
#       chars.shuffle.join
#     end
#   end
# end

# class User
#   # refinementsを有効化する
#   using StringShuffle

#   def initialize(name)
#     @name = name
#   end

#   def shuffled_name
#     @name.shuffle
#   end
# end

# user = User.new("Alice")
# p user.shuffled_name

# p "Alice".shuffle

# 二重コロンとドットの違い
module Sample
  class User
    NAME = "Alice"

    def self.hello(name = NAME)
      "Hello, I am #{name}"
    end
  end
end

p Sample::User::NAME
p Sample::User.hello
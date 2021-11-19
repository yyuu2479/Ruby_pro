# メゾットの探索ルール
module A
  def to_s
    "<A> #{super}"
  end
end

module B
  def to_s
    "<B> #{super}"
  end
end

class Product
  def to_s
    "<Product> #{super}"
  end
end

class DVD < Product
  include A
  include B

  def to_s
    "<DVD> #{super}"
  end
end

dvd = DVD.new
p dvd.to_s
p DVD.ancestors

# モジュールに他のモジュールをincludeする
module Greeting
  def hello
    'hello.'
  end
end

module Aisatsu
  include Greeting

  def konnichiwa
    'こんにちは。'
  end
end

class User
  include Aisatsu
end

user = User.new
p user.hello
p user.konnichiwa
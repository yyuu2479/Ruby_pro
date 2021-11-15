a = "abc"
b = "def"
c = a

p a.equal?(b)
p a.equal?(c)

# モンキーパッチ
class User
  def initialize(name)
    @name = name
  end

  def hello
    "Hello, #{@name}"
  end
end

class User
  # def hello
  #   "#{@name}さん、こんにちは！！"
  # end

  alias hello_original hello

  def hello
    "#{hello_original}　じゃなくて、 #{@name}さん、こんにちは"
  end
end


# 特異メゾット
alice = "alice"
bob = "bob"

def alice.shuffle
  chars.shuffle.join
end
p alice.shuffle

class << alice
  def shuffle
    chars.shuffle.join
  end
end
p alice.shuffle
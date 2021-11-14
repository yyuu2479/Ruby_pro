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

user = User.new("アリス")
p user.hello

class User
  # def hello
  #   "#{@name}さん、こんにちは！！"
  # end

  alias hello_original hello

  def hello
    "#{hello_original}　じゃなくて、 #{@name}さん、こんにちは"
  end
end

p user.hello
name = "satou"

# シングルクオートと一緒
p %q!こんにちは!
# ダブルクオートと一緒
p %Q?こんにちは #{name}?
# ダブルクオートと一緒
p %{こんにちは #{name}}

puts "line1,
line2"

a = <<~TEXT
  これはヒアドキュメントです。
  複数行に渡る長い文字列を作成するのに便利
TEXT

puts a

def method
  name = "ミミ太郎"
  <<~ABOUT
    #{name}です！
    ただいまプログラミングの勉強中です！
    めちゃくちゃ楽しいです！
    みんなもやろう！
  ABOUT
end
puts method

a = "Ruby"
a.prepend(<<~TEXT)
  Java
  PHP
TEXT
puts a

b = <<~TEXT.upcase
  hello,
  good-bye,
TEXT
puts b

p sprintf('%0.3f + %0.3f', 1.2, 2.0)
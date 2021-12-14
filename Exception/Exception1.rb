def some_awesome(n)
  begin
    1 / n
    "OK"
  rescue
    "error"
  ensure
    "ensure"
  end
end

p some_awesome(1)
p some_awesome(0)

# rescue修飾子なし
require "date"
def to_date(string)
  begin
    Date.parse(string)
  rescue ArgumentError
    nil
  end
end

p to_date("2017-01-01")
p to_date("abcdefg")

# rescue修飾子あり
def to_date_new(string)
  Date.parse(string) rescue nil
end

p to_date_new("2017-01-01")
p to_date_new("abcdefg")

puts "--------------------------------------------------------"
# いつものやつ
# こっちの方が可読性がいいのでこっちの方はいい
begin
  1 / 0
  puts "問題なし"
rescue => e
  p "エラーの種類: #{e.class} エラーメッセージ: #{e.message}"
  p "バックトレース: #{e.backtrace}"
end
puts "--------------------------------------------------------"

# $! と $@
begin
  1 / 0
  puts "問題なし"
rescue
  p "エラー種類: #{$!.class} エラーメッセージ: #{$!.message}"
  p "バックトレース: #{$@}"
end
puts "--------------------------------------------------------"

# 例外処理のbegin/endを省略できるケース
def fizzbuzz(n)
  if n % 15 == 0
    puts "fizzbuzz"
  elsif n % 3 == 0
    puts "fizz"
  elsif n % 5 == 0
    puts "buzz"
  else
    puts n.to_s
  end
rescue => e
  puts "エラー内容: #{e.class} エラーメッセージ: #{e.message}"
end

fizzbuzz(30)
puts "----------------------------------------------------------"
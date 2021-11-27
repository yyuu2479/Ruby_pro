puts "Start"
module Greeter
  def hello
    "hello"
  end
end
begin
  greeter = Greeter.new
rescue
  puts "例外が発生したが処理を続行します"
end
puts "End"

# 例外の補足に関するもの
def method_1
  puts "method_1 start"
  begin
    method_2
  rescue
    puts "例外が発生しました"
  end
  puts "method_1 finish"
end

def method_2
  puts "method_2 start"
  method_3
  puts "method_2 finish"
end

def method_3
  puts "method_3 start"
  1 / 0
  puts "method_3 finish"
end

method_1

begin
  "abc".foo
rescue => e
  puts "エラークラス：　#{e.class}"
  puts "エラーメッセージ： #{e.message}"
  puts "バックトレース ----------"
  puts e.backtrace
  puts "----------------------------"
end

begin
  "abc".foo
rescue NoMethodError, ZeroDivisionError　=> e
  puts "その様なメゾットは存在しません！または０で除算しました！"
  puts "エラークラス: #{e.class}"
  puts "エラーメッセージ: #{e.message}"
  puts "---------------"
  puts e.backtrace
  puts "---------------"
end

begin
  Foo.new
rescue NameError
  puts "NoMethodErrorです"
rescue NoMethodError
  puts "NameErrorです"
end

retry_count = 0
begin
  puts "処理を開始します。"
  1 / 0
rescue => exception
  retry_count += 1
  if retry_count <= 3
    puts "retryします。 (#{retry_count}回目)"
    retry
  else
    puts "retryに失敗しました。"
  end
end

def currency_of(country)
  case country
  when :japan
    puts "yen"
  when :us
    puts "dollar"
  else
    raise ArgumentError.new("無名な国名です。#{country}")
  end
end

puts currency_of(:italy)
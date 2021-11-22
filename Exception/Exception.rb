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
  puts "-----------------------"
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

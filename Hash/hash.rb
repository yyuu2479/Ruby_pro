# currencies = { 'japan' => 'yen', 'us' => 'dollar', 'india' => 'rupee' }

# currencies.each do |key, value|
#   p "#{key} : #{value}"
# end

# p currencies.delete('japan')
# p currencies

# currencies.delete('italy') {|key| p "Not found: #{key}"}

# a = { 'x' => 1, 'y' => 2, 'z' => 3 }
# b = { 'x' => 1, 'y' => 2, 'z' => 3 }
# c = { 'z' => 3, 'y' => 2, 'x' => 1 }
# p a == b
# p a == c

currencies = { japan: 'yen', us: 'dollar', india: 'rupee' }
# # p currencies[:japan]
# p currencies.keys
# p currencies.values
# p currencies.has_key?(:japan)
# p currencies.has_key?(:italy)
# p currencies.include?(:japan)

# p currencies.to_a
# p currencies.to_h

# person = {
#   name: 'Alice',
#   age: 20,
#   friends: ['Bob', 'Carol'],
#   phones: {home: '1234-0000', mobile: '5678-0000'}
# }

# p person[:name]
# p person[:age]
# p person[:friends][1]
# p person[:phones][:home]

# def buy_burger(menu, drink:, potato:, **others)
#   puts "#{menu}バーガーを購入！！"
#   if drink
#     puts "#{drink}を購入！！"
#   end
#   if potato
#     puts "ポテトも購入！！"
#   end
#   if others[:salada]
#     puts "サラダも購入！"
#   end
#   if others[:chicken]
#     puts "チキンも購入"
#   end
# end

# buy_burger('チーズ', drink: 'コーヒー', potato: true, salada: true, chicken: true)

# def buy_burger(options = {}, menu)
#   puts options
# end
# buy_burger({ 'drink' => true, 'potato' => true }, 'チーズ')

# h = Hash.new { |hash, key| hash[key] = "hello" }
# p h[:foo]
# p h[:bar]
# puts h

# 引数の順番
# def foo(a, b, c = 3, d = 4, *ef, g, h, i: 9, j: 10, **kl, &block)
#   "a: #{a}, b: #{b}, c: #{c}, d: #{d}, ef: #{ef}, g: #{g}, h: #{h}, i: #{i},
#   j: #{j}, kl: #{kl}, block: #{block}"
# end

# p foo(1, 2, 3, 4, 5, 6, 7, 8, i: 9, j: 10, k:11, l: 12){ 13 }

# # ぼっち演算子
# a = "ruby"
# p a&.upcase
# p a.upcase

# # ||=を使って自己代入
# limit = nil
# limit ||= 10
# p limit

# limit2 = 20
# limit2 ||= 10
# p limit2

# def user_exists?
#   find_user = "ひろし"
#   puts !!find_user
# end

# user_exists?

# h = { "japan" => "yen", "usa" => "dollar" }
# p h
# p h["japan"] = "円"

# h.each do |key, value|
#   p key
#   p value
# end

# p h.size

# hash = Hash.new("存在しません")
# p hash
# p hash[:japan]

# def buy_burger(menu:, drink:)
#   puts "#{menu}を購入"
#   if drink
#     puts "#{drink}も購入！"
#   end
# end
# buy_burger(menu: "チーズバーガー", drink: "オレンジジュース")

h = {us: "dollar"}
hash = {japan: "yen"}.merge(h)
p hash

def buy(options = {})
  p options
  puts options[:drink]
  puts options[:potsto]
end
buy(drink: "オレンジジュース", potsto: "ポテト")
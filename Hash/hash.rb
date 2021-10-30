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

# currencies = { japan: 'yen', us: 'dollar', india: 'rupee' }
# p currencies[:japan]

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

def buy_burger(menu, drink:, potato:)
  puts "#{menu}バーガーを購入！！"
  if drink
    puts "#{drink}を購入！！"
  end
  if potato
    puts "ポテトも購入！！"
  end
end

buy_burger("チーズ", drink: "コーヒー", potato: false)
number = 2
number2 =
if number == 1
  '数字の１です'
else
  '数字の１以外です'
end
p number2

number3 = number == 1 ? '数字の１です' : '数字の１以外です'
p number3

n = 13
n1 = n > 12 ? 'nの方が大きいです' : '１２のほうが大きいです'
p n1

string = "naoko"
s1 = string == "ken" ? "等しいです" : "ひとしくないです"
p s1

if string == "naoko"
  puts "等しいですif"
else
  puts "ひとしくないですif"
end
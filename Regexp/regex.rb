# 文字列と正規表現の比較
# p '123-4567' =~ /\d{3}-\d{4}/
# p 'hello' =~ /\d{3}-\d{4}/

# if '123-4567' =~ /\d{3}-\d{4}/
#   puts "マッチしました！！"
# else
#   puts "マッチしませんでした！！"
# end

# text = "私の誕生日は1977年7月17日です。"
# m = /(\d+)年(\d+)月(\d+)日/.match(text)
# # p m[1]
# # p m[2]
# # p m[3]

# if m = /(?<year>\d+)年(?<month>\d+)月(?<day>\d+)日/.match(text)
#   p m[0]
#   p m[:year]
#   p m[:month]
#   p m[:day]
#   p m[1..3]
# else
#   p "マッチしませんでした！！！！"
# end

# if /(?<year>\d+)年(?<month>\d+)月(?<day>\d+)日/ =~ text
#   puts "#{year}/#{month}/#{day}"
# end

# p "私の誕生日は1977年7月17日です。".scan(/(\d+)年(\d+)月(\d+)日/)

phone = "電話番号は123-4567です"
p phone[/\d{3}-\d{4}/]

text = "誕生日は1977年7月17日です"
p text[/(?<year>\d+)年(?<month>\d+)月(?<day>\d+)日/, :year]
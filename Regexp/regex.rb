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

# phone = "電話番号は123-4567です"
# p phone[/\d{3}-\d{4}/]

# text = "誕生日は1977年7月17日です"
# p text[/(?<year>\d+)年(?<month>\d+)月(?<day>\d+)日/, :year]

# text = "123,456-789"
# p text.split(/,|-/);
# p text.gsub(/,|-/, ':')

# text = "誕生日は1977年7月17日です"
# p text.gsub(/(\d+)年(\d+)月(\d+)日/, '\1-\2-\3')
# p text.gsub(/(?<year>\d+)年(?<month>\d+)月(?<day>\d+)日/, '\k<year>:\k<month>:\k<day>')

# text = "123,456-789"
# hash = {',' => ':', '-' => '/'}
# p text.gsub(/,|-/, hash)

# text = '123.456-789'
# p text.gsub(/,|-/, ':')

# pattern = '\d{3}-\d{4}'
# p '123-4567' =~ /#{pattern}/

text = '03-1234-5678'

case text
when /^\d{3}-\d{4}$/
  puts "郵便番号です"
when /^\d{4}\/\d{1, 2}\/\d{1, 2}$/
  puts "日付です"
when /^\d+-\d+-\d+$/
  puts "電話番号です"
end
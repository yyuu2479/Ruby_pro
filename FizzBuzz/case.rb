country = 'italy'

if country == 'japan'
  p 'こんにちは'
elsif country == 'us'
  p 'Hello'
elsif country == 'italy'
  p 'ciao'
else
  p '??????'
end

case country
  when 'japan', '日本'
    p 'こんにちは'
  when 'us', 'アメリカ'
    p 'Hello'
  when 'italy', 'イタリア'
    p 'ciao'
  else
    p '???????'
end

message =
case country
when 'japan'
  'こんにちは'
when 'us'
  'Hello'
when 'italy'
  'ciao'
else
  '???????'
end
p message

message2 =
case country
when 'japan' then 'こんにちは'
when 'us' then 'Hello'
when 'italy' then 'ciao'
else '???????'
end
p message2
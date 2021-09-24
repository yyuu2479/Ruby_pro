def add(a, b)
  a + b
end
p add(1, 2)

def greeting(country)
  return "countryを入力してください！！" if country.nil?

  if country == "japan"
    "こんにちは！！"
  else
    "hello!!!"
  end
end

p greeting("")
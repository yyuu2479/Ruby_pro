status = 'error'

unless status == 'OK'
  p '不具合が発生しました'
else
  p '問題ありません'
end

# 後置きunless
p '何か異常があります' unless status == 'ok'

if status != 'OK'
  p '不具合が発生しました!'
else
  p '問題なし'
end

# 後置きif
p "何か異常があります？" if status == "error"
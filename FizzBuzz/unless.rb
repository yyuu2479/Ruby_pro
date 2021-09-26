status = 'error'

unless status == 'OK'
  p '不具合が発生しました！'
else
  p '問題ありません！'
end

p '何か異常があります！' unless status == 'ok'

if status != 'OK'
  p '不具合が発生しました！'
else
  p '問題なし！'
end
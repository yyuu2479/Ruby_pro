class Ticket
  # 外部からアクセスできるようにゲッターメゾットを定義する(読み取り専用)
  attr_reader :fare, :stamped_at

  # コンストラクタ
  def initialize(fare)
    @fare = fare
  end
  # 渡された駅名(乗車する駅名)を@stamped_atに代入
  def stamp(name)
    @stamped_at = name
  end
end
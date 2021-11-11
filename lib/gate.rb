class Gate
  # 駅名(定数)
  STATIONS = [:umeda, :juso, :mikuni]
  # 料金(定数)
  FARES = [150, 190]

  # コンストラクタ
  def initialize(name)
    @name = name
  end
  # 乗車する駅名を渡す(ticket.rbのstampメゾット)
  def enter(ticket)
    ticket.stamp(@name)
  end
  # 運賃の配列から適切な料金を取得している
  def calc_fare(ticket)
    from = STATIONS.index(ticket.stamped_at)
    to = STATIONS.index(@name)
    distance = to - from
    FARES[distance -1]
  end
  # 適切な料金と切符の購入額を比較し、足りているかを判断するメゾット
  def exit(ticket)
    fare = calc_fare(ticket)
    fare <= ticket.fare
  end
end
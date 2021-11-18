# # モジュール
# module Loggable
#   def price_tag
#     "#{price}円"
#   end
# end

# # モジュールを読み込むクラス
# class Product
#   include Loggable
#   def price
#     1000
#   end
# end

# # aがbより大きいなら正の整数
# p 2 <=> 1
# # aとbが等しいなら0
# p 2 <=> 2
# # aがbより小さいなら負の整数
# p 1 <=> 2
# # aとbが比較できない場合はnil
# p 2 <=> "abc"

# class Tempo
#   include Comparable
#   attr_reader :bpm

#   def initialize(bpm)
#     @bpm = bpm
#   end

#   def <=>(other)
#     if other.is_a?(Tempo)
#       bpm <=> other.bpm
#     else
#       nil
#     end
#   end

#   def inspect
#     "#{bpm}bpm"
#   end
# end

# t1 = Tempo.new(120)
# t2 = Tempo.new(180)

# p t1 > t2
# p t1 < t2
# p t1 == t2

# tempos = [Tempo.new(180), Tempo.new(60), Tempo.new(120)]
# p tempos.sort

# p Object.include?(Kernel)

# p String.class

module Baseball
  class Second
    attr_accessor :player, :uniform_number

    def initialize(player, uniform_number)
      @player = player
      @uniform_number = uniform_number
    end
  end
end

module Clock
  class Second
    attr_accessor :digists

    def initialize(digists)
      @digists = digists
    end
  end
end

b_second = Baseball::Second.new("佐藤", 4)
c_second = Clock::Second.new(15)

puts b_second.player
puts c_second.digists
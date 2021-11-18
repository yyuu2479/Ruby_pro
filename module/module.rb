# モジュール
# module Loggable
#   PREFIX = "[LOG]".freeze

#   def hello
#     puts "こんにちは"
#   end

#   def price_tag(price)
#     puts "#{price}円"
#   end

#   module_function :price_tag
# end

# Loggable.price_tag(1000)
# p Loggable::PREFIX

# class Product
#   include Loggable

#   def price(price)
#     self.price_tag(price)
#   end
# end

# product = Product.new
# product.price(3000)

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

# module Baseball
#   class Second
#     attr_accessor :player, :uniform_number

#     def initialize(player, uniform_number)
#       @player = player
#       @uniform_number = uniform_number
#     end
#   end
# end

# module Clock
#   class Second
#     attr_accessor :digists

#     def initialize(digists)
#       @digists = digists
#     end
#   end
# end

# b_second = Baseball::Second.new("佐藤", 4)
# c_second = Clock::Second.new(15)


# puts b_second.player
# puts c_second.digists

# p Math.sqrt(2)
# class Calculator
#   include Math

#   def calc_sqrt(n)
#     sqrt(n)
#   end
# end

# calculator = Calculator.new
# p calculator.calc_sqrt(3)

# p Math::E
# p Math::PI

module AwesomeApi
  @base_url = ''
  @debug_mode = false

  class << self
    attr_accessor :base_url, :debug_mode
  end
end

AwesomeApi.base_url = "http://exsample.com"
AwesomeApi.debug_mode = true

p AwesomeApi.base_url
p AwesomeApi.debug_mode
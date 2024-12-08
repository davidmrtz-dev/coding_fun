require 'byebug'

def find_the_difference(s, t)
  result = 0
  s.each_char { |char| result ^= char.ord }
  t.each_char { |char| result ^= char.ord }
  result.chr
end

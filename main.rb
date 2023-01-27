require_relative './coding_challenges/easy/flipping_bits'

require 'byebug'

include Implementation

puts flipping_bits(2147483647)
puts flipping_bits(1)
puts flipping_bits(0)
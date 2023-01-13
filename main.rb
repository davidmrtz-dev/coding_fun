require_relative './coding_challenges/n_repeated_in_size_2n'
require_relative './coding_challenges/final_prices'
require_relative './coding_challenges/longest_substring_without_repeated_chars'
require_relative './coding_challenges/fizz_buzz'
require_relative './coding_challenges/busiest_time_in_the_mall'

include Implementation

# puts length_of_longest_substring('abcabcbb')
# puts length_of_longest_substring('bbbbb')
# puts length_of_longest_substring('pwwkew')

# puts find_busiest_period([
#   [1487799425,14,1],
#   [1487799425,4,1],
#   [1487799425,2,1],
#   [1487800378,10,1],
#   [1487801478,18,1],
#   [1487901013,1,1],
#   [1487901211,7,1],
#   [1487901211,7,1]
# ]); # 1487901211

puts find_busiest_period([
  [1487799425, 14, 1],
  [1487799425, 4,  0],
  [1487799425, 2,  0],
  [1487800378, 10, 1],
  [1487801478, 18, 0],
  [1487801478, 18, 1],
  [1487901013, 1,  0],
  [1487901211, 7,  1],
  [1487901211, 7,  0]
]) # 1487800378


1487799425 - 20
1487800378 - 30
1487801478 - 48
1487901013 - 47
1487901211 - 61
require_relative './coding_challenges/busiest_time_in_the_mall'

require 'byebug'

include Implementation

data = [[1487799425, 14, 1],
        [1487799425, 4,  0],
        [1487799425, 2,  0],
        [1487800378, 10, 1],
        [1487801478, 18, 0],
        [1487801478, 18, 1],
        [1487901013, 1,  0],
        [1487901211, 7,  1],
        [1487901211, 7,  0]]

puts find_busiest_period(data) # -> 1487800378
require_relative './coding_challenges/n_repeated_in_size_2n'
require_relative './coding_challenges/final_prices'

include Implementation

# puts repeated_n_times([5,1,5,2,5,3,5,4]) #5
# puts repeated_n_times([2,1,2,5,3,2]) #2
# puts repeated_n_times([1,2,3,3]) #3

# print final_prices([8,4,6,2,3]) #[4,2,4,2,3]
# print final_prices([8,4,5,6,2,3]) #[4,2,3,4,2,3]
# print final_prices([8,4,2,5,6,2,3]) #[4,2,0,3,4,2,3]
# print final_prices([8,4,2,2,2,5,6,2,3]) #[4,2,0,0,0,3,4,2,3]
print final_prices([8, 7, 4, 2, 8, 1, 7, 7, 10, 1]) # [1,3,2,1,7,0,0,6,9,1]

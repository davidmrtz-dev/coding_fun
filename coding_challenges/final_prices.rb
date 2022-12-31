require 'byebug'

module Implementation
  def final_prices(prices)
    ans = []
    temp = []
    prices.each_with_index do |price, idx|
      temp.push(price) && next if temp.empty?

      if temp.all? { |t| t >= price }
        ans << temp.map { |e| e - price }
        ans.flatten!
        temp = [price]
      else
        temp.push(price)
      end

      (ans << temp) && ans.flatten! if idx == prices.size - 1
    end
    ans
  end
end

# input = [8,4,6,2,3]
# output = [4,2,4,2,3]
# temp = nil, ans = []
# 1.- current = 8, ans = [], temp = [8]
# 2.- current = 4, ans = [4], temp = [4]
# 3.- current = 6, ans = [4], temp = [4, 6]
# 4.- current = 2, ans = [4, 2, 4], temp = [2]
# 5,- current = 3, ans = [4, 2, 4, 2, 3], temp = nil

# input = [8,4,5,6,2,3]
# output = [4,2,3,4,2,3]
# temp = nil, ans = []
# 1.- current = 8, ans = [], temp = [8]
# 2.- current = 4, ans = [4], temp = [4]
# 3.- current = 5, ans = [4], temp = [4, 5]
# 4.- current = 6, ans = [4], temp = [4, 5, 6]
# 5.- current = 2, ans = [4, 2, 3, 4], temp = [2]
# 6.- current = 3, ans = [4, 2, 3, 4, 2, 3], temp = nil

# input = [8,4,2,5,6,2,3]
# output = [4,2,0,3,4,2,3]
# temp = nil, ans = []
# 1.- current = 8, ans = [], temp = [8]
# 2.- current = 4, ans = [4], temp = [4]
# 3.- current = 2, ans = [4, 2], temp = [2]
# 4.- current = 5, ans = [4, 2], temp = [2, 5]
# 5.- current = 6, ans = [4, 2], temp = [2, 5, 6]
# 6.- current = 2, ans = [4, 2, 0, 3, 4], temp = [2]
# 7.- current = 3, ans = [4, 2, 0, 3, 4, 2, 3], temp = nil

# input = [8,4,2,2,2,5,6,2,3]
# output = [4,2,0,0,0,3,4,2,3]
# temp = nil, ans = []
# 1.- current = 8, ans = [], temp = [8]
# 2.- current = 4, ans = [4], temp = [4]
# 3.- current = 2, ans = [4, 2], temp = [2]
# 4.- current = 2, ans = [4, 2, 0], temp = [2]
# 5.- current = 2, ans = [4, 2, 0, 0], temp = [2]
# 6.- current = 5, ans = [4, 2, 0, 0], temp = [2, 5]
# 7.- current = 6, ans = [4, 2, 0, 0], temp = [2, 5, 6]
# 8.- current = 2, ans = [4, 2, 0, 0, 0, 3, 4], temp = [2]
# 9.- current = 3, ans = [4, 2, 0, 0, 0, 3, 4, 2, 3], temp = nil

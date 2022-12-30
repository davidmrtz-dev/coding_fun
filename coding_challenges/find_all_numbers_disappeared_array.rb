def find_disappeared_numbers(nums)
  arr = Array.new(nums.length + 1)
  nums.each { |i| arr[i] = true }

  ans = []
  (1..nums.length).each do |j|
    ans.push(j) if arr[j].nil?
  end
  ans
end

numb_ary = [4,3,2,7,8,2,3,1]
# numb_ary = [1,1]


puts find_disappeared_numbers(numb_ary)

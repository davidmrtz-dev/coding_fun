module Implementation
  def counting_sort(arr)
    ans = Array.new(100, 0)
    arr.each do |num|
      ans[num] += 1 if num < 100
    end
    ans
  end
end
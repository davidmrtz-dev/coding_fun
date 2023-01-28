module Implementation
  def diagonal_difference(arr)
    left = 0
    right = arr.length - 1
    left_sum = 0
    right_sum = 0

    arr.flatten.each_slice(arr.length) do |sub|
      left_sum += sub[left]
      right_sum += sub[right]
      right -= 1
      left += 1
    end

    (left_sum - right_sum).abs
  end
end
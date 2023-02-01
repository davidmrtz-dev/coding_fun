module Implementation
  def two_arrays(k, arr_1, arr_2)
    arr_1 = arr_1.sort_by { |n| n }
    arr_2 = arr_2.sort_by { |n| -n }

    arr_1.each_with_index do |n, idx|
      return 'NO' if n + arr_2[idx] < k
    end

    'YES'
  end
end
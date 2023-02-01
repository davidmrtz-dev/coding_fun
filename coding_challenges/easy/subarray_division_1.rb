module Implementation
  def birthday(arr, d, m)
    ans = 0
    arr.each_with_index do |_num, idx|
      suba = arr.slice(idx..(idx + m - 1)).inject(0, :+)
      ans += 1 if suba.eql?(d)
    end
    ans
  end
end
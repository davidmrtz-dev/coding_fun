module Implementation
  def lonely_integer(a)
    ans = 0
    a.sort!.each_slice(2) do |n1, n2|
      if n1 != n2
        ans = n1
        break
      end
    end
    ans
  end
end

# Time Complexity O(n)
# Space Complexity O(1)
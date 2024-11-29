require 'byebug'

def lonely_integer(val)
  ans = 0
  val.sort!.each_slice(2) do |n1, n2|
    if n1 != n2
      ans = n1
      break
    end
  end
  ans
end

puts lonely_integer([1, 2, 3, 4, 3, 2, 1])

# Time Complexity O(n)
# Space Complexity O(1)

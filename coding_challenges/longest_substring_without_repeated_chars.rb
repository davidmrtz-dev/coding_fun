require 'byebug'
require 'ostruct'
require 'set'

module Implementation
  def length_of_longest_substring(s)
    se = Set.new()
    left = 0
    ans = 0

    (0..(s.length)).each do |idx|
      
      if se.include?(s[idx])
        se.delete(s[left])
        left += 1
      end
      se.add(s[idx])
      ans = [ans, idx - left + 1].max
    end

    ans
  end
end
require 'byebug'

def merge_alternately(word1, word2)
  merged_array = []
  i = 0

  while i < word1.length || i < word2.length
    merged_array << word1[i] if i < word1.length
    merged_array << word2[i] if i < word2.length
    i += 1
  end

  merged_array.join
end

puts merge_alternately('abc', 'pqr')

# Time Complexity O(n)
# Space Complexity O(n + m)

require 'byebug'

def merge_alternately(word1, word2)
  result = []
  i = 0

  while i < word1.length || i < word2.length
    result << word1[i] if i < word1.length
    result << word2[i] if i < word2.length
    i += 1
  end

  result.join
end

puts merge_alternately('abc', 'pqr')

# Time Complexity ?
# Space Complexity ?

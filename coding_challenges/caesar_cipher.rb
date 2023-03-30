module Implementation
  @alpha = 'abcdefghijklmnopqrstuvwxyz'.split('')

  def caesar_cipher(s, k)
    enc = ''
    s.each_char do |char|
      enc << char && next unless char.match(/[a-zA-Z]/)
      enc << encoded_char(char, k)
    end
    enc
  end

  def encoded_char(char, k)
    is_cap = false
    is_cap = true if char.match(/[A-Z]/)
    char.downcase!
    idx = @alpha.find_index(char)
    rotated_idx = (idx + k) % @alpha.length
    enc_letter = @alpha[rotated_idx]
    is_cap ? enc_letter.capitalize : enc_letter
  end
end
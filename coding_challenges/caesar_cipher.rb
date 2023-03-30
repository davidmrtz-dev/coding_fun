module Implementation
  def caesar_cipher(s, k)
    alpha = 'abcdefghijklmnopqrstuvwxyz'.split('')
    enc = ''

    s.each_char do |char|
      unless char.match(/[a-zA-Z]/)
        enc << char
        next
      end
      is_cap = false
      is_cap = true if char.match(/[A-Z]/)
      char.downcase!
      idx = alpha.find_index(char)
      rotated_idx = (idx + k) % alpha.length
      enc_letter = alpha[rotated_idx]
      enc_letter = enc_letter.capitalize if is_cap
      enc << enc_letter
    end

    enc
  end
end
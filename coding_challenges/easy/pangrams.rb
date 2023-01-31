module Implementation
  def pangrams(s)
    dict = {
      a: false,
      b: false,
      c: false,
      d: false,
      e: false,
      f: false,
      g: false,
      h: false,
      i: false,
      j: false,
      k: false,
      l: false,
      m: false,
      n: false,
      o: false,
      p: false,
      q: false,
      r: false,
      s: false,
      t: false,
      u: false,
      v: false,
      w: false,
      x: false,
      y: false,
      z: false
    }
    str = s.downcase.gsub(/\s+/, '').split('')
    str.each { |letter| dict[letter.to_sym] = true }
    dict.values.all?(true) ? 'pangram' : 'not pangram'
  end
end
module Implementation
  def flipping_bits(n)
    ("%.32b" % n).split('').map do |ele|
      ele.to_i.zero? ? 1 : 0
    end.join('').to_i(2)
  end
end

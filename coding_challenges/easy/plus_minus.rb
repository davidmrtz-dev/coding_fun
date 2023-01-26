module Implementation
  def plus_minus(arr)
    counter = {
      pos: 0.0,
      neg: 0.0,
      zero: 0.0
    }

    arr.each do |num|
      calc = num <=> 0

      counter[:pos] += 1 if calc.positive?
      counter[:neg] += 1 if calc.negative?
      counter[:zero] += 1 if calc.zero?
    end

    counter.values.each { |val| puts "%.4f" % (val / arr.length) }
  end
end

# Time complexity: O(n)
# Space complexity: O(n)
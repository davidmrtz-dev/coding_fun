module Implementation
  def sock_merchant(_n, ar)
    hash = Hash.new
    odd_sock = 0
    ar.sort.uniq.each { |num| hash[num] = 0}

    ar.sort_by { |e| e }.each do |ele|
      hash[ele] = hash[ele] + 1
    end

    hash.values.each { |val| odd_sock += val / 2 }
    odd_sock
  end
end
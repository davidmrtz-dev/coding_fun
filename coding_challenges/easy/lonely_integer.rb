module Implementation
  def lonely_integer(a)
    register = Array.new(a.length, 0)
    a.sort!.each do |num|
      register[num - 1] = register[num - 1] + 1
    end

    register.find_index(1) + 1
  end
end

# [1, 1, 2, 2, 3, 3, 4]
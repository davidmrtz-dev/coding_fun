module Implementation
  def flipping_matrix(matrix)
    mid = matrix.length / 2
    ene = mid - 1
    sum = 0

    for idx in 0..mid
      for idj in 0..mid
        puts matrix[idx][idj]
        puts matrix[idx][ene - idj]
        puts matrix[ene - idx][idj]
        puts matrix[ene - idx][ene - idj]
        puts '--------------------------'
        temp = Array.new
        temp << matrix[idx][idj]
        temp << matrix[idx][ene - idj]
        temp << matrix[ene - idx][idj]
        temp << matrix[ene - idx][ene - idj]
        sum += temp.max
      end
    end

    sum
  end
end
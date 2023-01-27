module Implementation
  def matching_strings(strings, queries)
    query_h = Hash.new
    queries.each { |q| query_h[q] = 0}
    result = Array.new(queries.length)

    strings.each do |str|
      query_h[str] = query_h[str] + 1 unless query_h[str].nil?
    end

    queries.each_with_index do |q, idx|
      result[idx] = query_h[q] ? query_h[q] : 0
    end

    result
  end
end
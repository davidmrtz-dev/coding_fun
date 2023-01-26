module Implementation
  def matching_strings(strings, queries)
    query_h = Hash.new
    queries.each { |q| query_h[q] = 0}

    strings.each do |str|
      query_h[str] = query_h[str] + 1 unless query_h[str].nil?
    end

    query_h.values
  end
end
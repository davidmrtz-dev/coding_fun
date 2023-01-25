module Implementation
  def find_busiest_period(arr)
    reference_index = 0
    max_ppl_at_current_period = 0
    max_ppl_at_past_period = 0
    last_ts = 0

    arr.each_with_index do |entry, idx|
      ts, ppl, action = entry

      if ts != last_ts
        if max_ppl_at_current_period > max_ppl_at_past_period
          max_ppl_at_past_period = max_ppl_at_current_period
          reference_index = idx - 1
        end

        last_ts = ts
      end

      max_ppl_at_current_period += ppl if action.eql? 1
      max_ppl_at_current_period -= ppl if action.eql? 0

      if (arr.length - 1) == idx
        if max_ppl_at_current_period > max_ppl_at_past_period
          max_ppl_at_past_period = max_ppl_at_current_period
          reference_index = idx - 1
        end
      end
    end

    arr[reference_index][0]
  end
end




# [[1487799425, 14, 1], 14
# [1487799425, 4,  0], 10
# [1487799425, 2,  0], 8 -> 8
# [1487800378, 10, 1], 18 -> 18
# [1487801478, 18, 0], 0
# [1487801478, 18, 1], 18 -> 18
# [1487901013, 1,  0], 17 -> 17
# [1487901211, 7,  1], 24
# [1487901211, 7,  0]], 17 -> 17

# [[1487799425, 14, 1], 14
# [1487799425, 4,  0], 10
# [1487799425, 2,  0], 8 -> 8
# [1487800378, 10, 1], 18 -> 18
# [1487801478, 18, 0], 0
# [1487801478, 18, 1], 18 -> 18
# [1487901013, 1,  0], 17 -> 17
# [1487901211, 7,  1], 24
# [1487901211, 5,  0]], 19 -> 19

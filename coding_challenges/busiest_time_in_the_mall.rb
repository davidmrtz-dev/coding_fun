require 'byebug'
require 'ostruct'

module Implementation
  def find_busiest_period(arr)
    last_max_ts = 0
    last_max_ppl = 0
    current_ts = 0
    current_ppl = 0

    arr.each do |entry|
      ts, ppl, action = entry
      # byebug
      if ts != current_ts
        if current_ppl > last_max_ppl
          last_max_ppl = current_ppl
          last_max_ts = current_ts
        end
        current_ppl = 0
        current_ts = ts
      end

      current_ppl += ppl if action.eql? 1
      current_ppl -= ppl if action.eql? 0
    end

    last_max_ts
  end
end
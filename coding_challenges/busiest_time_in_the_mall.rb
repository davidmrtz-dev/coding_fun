require 'byebug'
require 'ostruct'

module Implementation
  def find_busiest_period(arr)
    last_max_ts = 0
    last_max_ppl = 0

    last_ts = 0
    total_ppl = 0

    return arr.first.first if arr.length.eql? 1

    arr.each do |entry|
      byebug
      ts, ppl, action = entry

      total_ppl += ppl if action.eql? 1
      total_ppl -= ppl if action.eql? 0

      if ts != last_ts
        if total_ppl > last_max_ppl
          last_max_ppl = total_ppl
          last_max_ts = ts
        end


        last_ts = ts
      else
        last_max_ppl = total_ppl
      end
    end

    last_max_ts
  end
end
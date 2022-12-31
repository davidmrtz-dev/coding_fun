require 'byebug'
require 'ostruct'
module Implementation
  def final_prices(prices)
    ans_list = prices.each_with_index.map do |_price, idx|
      OpenStruct.new({ value: 0, discount_applied: false, final_price: 0, idx: idx })
    end

    prices.each_with_index do |price, idx|
      if ans_list.any? { |v| v.value >= price && v.discount_applied == false }
        idxs = ans_list.select do |e|
          e.value >= price && e.discount_applied == false
        end.map(&:idx)

        idxs.each do |index|
          ans_list[index].value -= price
          ans_list[index].discount_applied = true
        end
      end

      ans_list[idx].value = price
    end

    ans_list.map(&:value)
  end
end

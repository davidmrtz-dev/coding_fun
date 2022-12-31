require 'byebug'

module Implementation
  def repeated_n_times(nums)
    non_repeteated_values = nums.group_by(&:itself).transform_values(&:count).select { |_k, v| v.eql? 1 }.keys
    repetead_values_with_count = nums.group_by(&:itself).transform_values(&:count).reject { |_k, v| v == 1 }
    repetead_values_with_count.key(non_repeteated_values.length)
  end
end

# Get values that only appears once.
# Create a hash with the repeated values as key and the count as values.
# Look for one value that has the same count as the length of the first array.

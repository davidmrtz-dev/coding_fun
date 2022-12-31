require_relative '../coding_challenges/n_repeated_in_size_2n'
include Implementation

RSpec.describe 'N repeated in size 2n' do
  describe 'when only one number is reapeated size of n' do
    it 'should return the correct value of n' do
      expect(repeated_n_times([5, 1, 5, 2, 5, 3, 5, 4])).to eq(5)
    end
  end

  describe 'when multiple numbers are repeated but less times than n' do
    it 'should return the correct value of n' do
      expect(repeated_n_times([5, 1, 5, 2, 5, 3, 5, 4, 6, 6, 6, 7, 7, 9, 9])).to eq(5)
    end
  end

  describe 'when multiple numbers are repeated but greater than n' do
    it 'should return the correct value of n' do
      expect(repeated_n_times([5, 1, 5, 2, 5, 3, 5, 4, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7])).to eq(5)
    end
  end
end

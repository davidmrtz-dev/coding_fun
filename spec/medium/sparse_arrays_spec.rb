require 'spec_helper'

RSpec.describe 'Sparse Array' do
  it 'should assert' do
    strings = ['aba', 'baba', 'aba', 'xzxb']
    queries = ['aba', 'xzxb', 'ab']
    expect(Implementation::matching_strings(strings, queries))
      .to eq([2, 1, 0])
  end

  # it 'should assert' do
  #   expect(Implementation::final_prices([8, 4, 5, 6, 2, 3]))
  #     .to eq([4, 2, 3, 4, 2, 3])
  # end

  # it 'should assert' do
  #   expect(Implementation::final_prices([8, 4, 2, 5, 6, 2, 3]))
  #     .to eq([4, 2, 0, 3, 4, 2, 3])
  # end
end

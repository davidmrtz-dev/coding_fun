require 'spec_helper'

RSpec.describe 'N repeated in size 2n' do
  it 'should assert' do
    expect(Implementation::final_prices([8, 4, 6, 2, 3]))
      .to eq([4, 2, 4, 2, 3])
  end

  it 'should assert' do
    expect(Implementation::final_prices([8, 4, 5, 6, 2, 3]))
      .to eq([4, 2, 3, 4, 2, 3])
  end

  it 'should assert' do
    expect(Implementation::final_prices([8, 4, 2, 5, 6, 2, 3]))
      .to eq([4, 2, 0, 3, 4, 2, 3])
  end

  it 'should assert' do
    expect(Implementation::final_prices([8, 4, 2, 2, 2, 5, 6, 2, 3]))
      .to eq([4, 2, 0, 0, 0, 3, 4, 2, 3])
  end

  it 'should assert' do
    expect(Implementation::final_prices([8, 7, 4, 2, 8, 1, 7, 7, 10, 1]))
      .to eq([1, 3, 2, 1, 7, 0, 0, 6, 9, 1])
  end

  it 'should assert' do
    expect(Implementation::final_prices([4, 7, 1, 9, 4, 8, 8, 9, 4]))
      .to eq([3, 6, 1, 5, 0, 0, 4, 5, 4])
  end
end

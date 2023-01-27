require 'spec_helper'

RSpec.describe 'LonelyInteger' do
  it 'should return the element that is not repeated' do
    expect(Implementation::lonely_integer([1, 2, 3, 4, 3, 2, 1])).to eq 4
  end

  it 'should return the element that is not repeated' do
    expect(Implementation::lonely_integer([4, 9, 95, 93, 57, 4, 57, 93, 9])).to eq 4
  end
end
require 'spec_helper'

RSpec.describe 'LonelyInteger' do
  it 'should return the element that is not repeated' do
    expect(Implementation::lonely_integer([1, 2, 3, 4, 3, 2, 1])).to eq 4
  end
end
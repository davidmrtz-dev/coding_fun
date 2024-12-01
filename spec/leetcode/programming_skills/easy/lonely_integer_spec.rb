require 'spec_helper'
require './leetcode/programming_skills/easy/lonely_integer'

RSpec.describe 'LonelyInteger' do
  it 'should return the element that is not repeated' do
    expect(lonely_integer([1, 2, 3, 4, 3, 2, 1])).to eq 4
  end

  it 'should return the element that is not repeated' do
    expect(lonely_integer([4, 9, 95, 93, 57, 4, 57, 93, 9])).to eq 95
  end

  it 'should return the element that is not repetead' do
    expect(lonely_integer([
      34, 95, 34, 64, 45, 95, 16, 80, 80, 75, 3, 25, 75, 25, 31, 3, 64, 16, 31
    ])).to eq 45
  end
end

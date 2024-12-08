require 'spec_helper'
require './leetcode/programming_skills/easy/find_the_difference'

RSpec.describe 'FindTheDifference' do
  it 'should return the extra character' do
    expect(find_the_difference('abcd', 'abcde')).to eq 'e'
  end

  it 'should return the extra character' do
    expect(find_the_difference('abcd', 'abcda')).to eq 'a'
  end

  it 'should return the extra character' do
    expect(find_the_difference('abc', 'dcba')).to eq 'd'
  end

  it 'should return the extra character' do
    expect(find_the_difference('a', 'aa')).to eq 'a'
  end

  it 'should return the extra character' do
    expect(find_the_difference('acd', 'abcd')).to eq 'b'
  end
end

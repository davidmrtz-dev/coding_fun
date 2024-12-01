require 'spec_helper'
require './leetcode/programming_skills/easy/merge_strings_alternately'

RSpec.describe 'MergeStringsAlternately' do
  it 'should merge strings alternately' do
    expect(merge_alternately('abc', 'pqr')).to eq 'apbqcr'
  end

  it 'should merge strings alternately' do
    expect(merge_alternately('ab', 'pqrs')).to eq 'apbqrs'
  end

  it 'should merge strings alternately' do
    expect(merge_alternately('abcd', 'pq')).to eq 'apbqcd'
  end
end

require 'spec_helper'

RSpec.describe 'LongestSubstringWithoutRepeatedChars' do
  xit 'should return the length of longest' do
    expect(Implementation::length_of_longest_substring('abcabcbb'))
      .to eq 3
  end

  xit 'should return the length of longest' do
    expect(Implementation::length_of_longest_substring('bbbbb'))
      .to eq 1
  end

  xit 'should return the  length of longest' do
    expect(Implementation::length_of_longest_substring('pwwkew'))
      .to eq 3
  end
end
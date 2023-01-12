require 'spec_helper'

RSpec.describe 'Buestiest time in the mall' do
  it 'should assert' do
    expect(Implementation::find_busiest_period([
      [1487799425, 14, 1],
      [1487799425, 4,  0],
      [1487799425, 2,  0],
      [1487800378, 10, 1],
      [1487801478, 18, 0],
      [1487801478, 18, 1],
      [1487901013, 1,  0],
      [1487901211, 7,  1],
      [1487901211, 7,  0]
    ])).to eq 1487800378
  end

  it 'should assert' do
    expect(Implementation::find_busiest_period([[1487799426,21,1]])).to eq 1487799426
  end

  it 'should assert' do
    expect(Implementation::find_busiest_period([
      [1487799425,14,1],
      [1487799425,4,1],
      [1487799425,2,1],
      [1487800378,10,1],
      [1487801478,18,1],
      [1487901013,1,1],
      [1487901211,7,1],
      [1487901211,7,1]
    ])).to eq 1487901211
  end

  it 'should assert' do
    expect(Implementation::find_busiest_period([
      [1487799425,14,1],
      [1487799425,4,0],
      [1487799425,2,0],
      [1487800378,10,1],
      [1487801478,18,0],
      [1487801478,19,1],
      [1487801478,1,0],
      [1487801478,1,1],
      [1487901013,1,0],
      [1487901211,7,1],
      [1487901211,8,0]
    ])).to eq 1487801478
  end
end
